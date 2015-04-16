json.array!(@work_orders) do |work_order|
  json.extract! work_order, :id, :wo_number, :start_date, :comp_date, :requestor, :priority, :repair_facility, :repair_type, :location, :summary, :est_completion, :percent_complete, :user_id, :item_id
  json.url work_order_url(work_order, format: :json)
end
