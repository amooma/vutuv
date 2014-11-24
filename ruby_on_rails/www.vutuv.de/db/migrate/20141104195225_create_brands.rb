class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :url
      t.integer :manufacturer_id
      t.string :wikipedia_url

      t.timestamps null: false
    end
  end
end
