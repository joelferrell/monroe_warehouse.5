class Item < ActiveRecord::Base
  has_many :work_orders
end
