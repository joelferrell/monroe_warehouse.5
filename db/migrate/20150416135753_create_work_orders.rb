class CreateWorkOrders < ActiveRecord::Migration
  def change
    create_table :work_orders do |t|
      t.integer :wo_number
      t.datetime :start_date
      t.datetime :comp_date
      t.string :requestor
      t.string :priority
      t.string :repair_facility
      t.string :repair_type
      t.string :location
      t.text :summary
      t.datetime :est_completion
      t.integer :percent_complete
      t.references :user, index: true
      t.references :item, index: true

      t.timestamps
    end
  end
end
