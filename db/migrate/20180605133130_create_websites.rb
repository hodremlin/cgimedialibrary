class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :title
      t.datetime :published_at
      t.string :business_name
      t.integer :pnotes_id
      t.string :thumbnail
      t.string :web_url
      t.integer   :vertical_id
      t.boolean  :featured 
      t.timestamps null: false
    end
  end
end
