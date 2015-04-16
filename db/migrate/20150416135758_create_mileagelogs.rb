class CreateMileagelogs < ActiveRecord::Migration
  def change
    create_table :mileagelogs do |t|
      t.decimal :starting_mile
      t.decimal :ending_mile
      t.decimal :rate
      t.decimal :total_miles
      t.decimal :mile_total_cost
      t.references :work_order, index: true

      t.timestamps
    end
  end
end
