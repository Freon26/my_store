# This migration comes from spree_blog (originally 20131029112004)
class AddSeoDescriptionToAuthors < ActiveRecord::Migration
  def change
    add_column :spree_authors, :seo_description, :text
  end
end
