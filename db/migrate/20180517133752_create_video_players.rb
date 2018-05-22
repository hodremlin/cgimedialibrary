class CreateVideoPlayers < ActiveRecord::Migration
  def change
    create_table :video_players do |t|
      t.string :title
      t.datetime :published_at
      t.string :business_name
      t.string :pnotes_id
      t.string :vertical
      
      t.timestamps null: false
    end
  end
end
