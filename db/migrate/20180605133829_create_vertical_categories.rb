class CreateVerticalCategories < ActiveRecord::Migration
  def change
    create_table :vertical_categories do |t|
      t.string :title
      t.timestamps null: false
    end
  end
end
