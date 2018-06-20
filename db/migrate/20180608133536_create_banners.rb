class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :title
      t.datetime :published_at
      t.string :business_name
      t.integer :pnotes_id
      t.integer :vertical_id
      t.string :thumbnail
      t.string :banner
      t.string :presentation_zone_url
      t.boolean  :featured
      t.timestamps null: false
      t.timestamps null: false
    end
  end
end
