class CreateCoffees < ActiveRecord::Migration[7.0]
  def change
    create_table :coffees do |t|
      t.string :name
      t.integer :price
      t.string :milk

      t.timestamps
    end
  end
end
