class CreateReviewtubes < ActiveRecord::Migration
  def change
    create_table :reviewtubes do |t|
      t.string :title
      t.datetime :published_at
      t.string :business_name
      t.integer :pnotes_id
      t.string :reviewtube
      t.string :playlist_1
      t.string :playlist_2
      t.string   :thumbnail
      t.integer   :vertical_id
      t.boolean  :featured
      t.string :presentation_zone_url
      t.timestamps null: false
    end
  end
end
