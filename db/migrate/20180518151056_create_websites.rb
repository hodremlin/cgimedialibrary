class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :title
      t.datetime :published_at
      t.string :business_name
      t.string :pnotes_id
      t.string :vertical
      t.string :web_url
      t.string :website_thumbnail
      
      t.timestamps null: false
    end
  end
end
