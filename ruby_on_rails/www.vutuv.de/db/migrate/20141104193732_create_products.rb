class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :category_id
      t.integer :brand_id
      t.string :url

      t.timestamps null: false
    end
  end
end
