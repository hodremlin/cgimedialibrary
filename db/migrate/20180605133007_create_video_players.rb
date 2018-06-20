class CreateVideoPlayers < ActiveRecord::Migration
  def change
    create_table :video_players do |t|
      t.string :title
      t.datetime :published_at
      t.string :business_name
      t.integer :pnotes_id
      t.string :video
      t.string   :thumbnail
      t.integer   :vertical_id
      t.boolean  :featured
      t.timestamps null: false
    end
  end
end
