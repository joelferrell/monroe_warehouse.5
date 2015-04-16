json.array!(@mileagelogs) do |mileagelog|
  json.extract! mileagelog, :id, :starting_mile, :ending_mile, :rate, :total_miles, :mile_total_cost, :work_order_id
  json.url mileagelog_url(mileagelog, format: :json)
end
