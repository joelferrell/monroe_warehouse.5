class WorkOrder < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
  has_many :mileagelogs
end
