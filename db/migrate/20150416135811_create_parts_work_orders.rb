class CreatePartsWorkOrders < ActiveRecord::Migration
  def change
    create_table :parts_work_orders do |t|
      t.belongs_to :part, index: true
      t.belongs_to :work_order, index: true
    end
  end
end
