# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to override the default site name.
  # config.site_name = "Spree Demo Site"

  config.use_s3 = true
  config.s3_bucket = 'mohan26'
  config.s3_access_key = "AKIAIZ572R7S5WSX65TA"
  config.s3_secret = "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"
  config.attachment_url = ":s3_ap_url"
  config.s3_host_alias = "s3-ap-southeast-1.amazonaws.com"
end

Paperclip.interpolates(:s3_ap_url) do |attachment, style|
"#{attachment.s3_protocol}://#{Spree::Config[:s3_host_alias]}/#{attachment.bucket_name}/#{attachment.path(style).gsub(%r{^/},"")}"
end

Spree.user_class = "Spree::User"
