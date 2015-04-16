class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.integer :part_number
      t.text :part_description
      t.decimal :unit_price
      t.decimal :unit_quantity
      t.decimal :parts_total
      t.decimal :tax
      t.decimal :shipping_cost
      t.string :invoice

      t.timestamps
    end
  end
end
