module SpreeCustomExtension
  class Engine < Rails::Engine
    def self.activate
      Spree::Order.class_eval do
        Spree::Order.state_machines[:state] = StateMachine::Machine.new(Order, :initial => 'cart') do
          after_transition :to => 'complete', :do => :complete_order
          before_transition :to => 'complete', :do => :process_payment

          event :next do
            transition :from => 'cart', :to => 'payment'
            transition :from => 'payment', :to => 'confirm'
            transition :from => 'confirm', :to => 'complete'
          end

          event :cancel do
            transition :to => 'canceled', :if => :allow_cancel?
          end
          event :return do
            transition :to => 'returned', :from => 'awaiting_return'
          end
          event :resume do
            transition :to => 'resumed', :from => 'canceled', :if => :allow_resume?
          end
          event :authorize_return do
            transition :to => 'awaiting_return'
          end

          before_transition :to => 'complete' do |order|
            begin
              order.process_payments!
            rescue Spree::GatewayError
              if Spree::Config[:allow_checkout_on_gateway_error]
                true
              else
                false
              end
            end
          end

          after_transition :to => 'complete', :do => :finalize!
          after_transition :to => 'confirm', :do => :create_tax_charge!
          after_transition :to => 'payment', :do => :create_shipment!
          after_transition :to => 'canceled', :do => :after_cancel

        end
      end
    end
  end
end