class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :model
      t.datetime :purchase_date
      t.text :description

      t.timestamps
    end
  end
end
