class CreateVerticals < ActiveRecord::Migration
  def change
    create_table :verticals do |t|
      t.string :title
      t.integer :vertical_category_id
      t.timestamps null: false
    end
  end
end
