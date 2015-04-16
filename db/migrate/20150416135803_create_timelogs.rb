class CreateTimelogs < ActiveRecord::Migration
  def change
    create_table :timelogs do |t|
      t.float :rate
      t.datetime :date
      t.string :nature_work
      t.float :hours_worked
      t.float :total
      t.string :employee
      t.references :work_order, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
