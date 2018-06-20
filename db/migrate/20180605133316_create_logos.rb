class CreateLogos < ActiveRecord::Migration
  def change
    create_table :logos do |t|
      t.string :title
      t.datetime :published_at
      t.string :business_name
      t.integer :pnotes_id
      t.integer :vertical_id
      t.string :thumbnail
      t.boolean  :featured
      t.timestamps null: false
    end
  end
end
