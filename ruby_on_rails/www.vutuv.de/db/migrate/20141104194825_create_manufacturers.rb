class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.string :url
      t.string :wikipedia_url

      t.timestamps null: false
    end
  end
end
