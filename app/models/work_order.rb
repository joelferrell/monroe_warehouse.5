class WorkOrder < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
  has_many :mileagelogs
  has_many :timelogs
  has_and_belongs_to_many :parts
end
