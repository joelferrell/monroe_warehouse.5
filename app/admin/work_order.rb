ActiveAdmin.register WorkOrder do
  permit_params :wo_number, :start_date, :comp_date, :requestor, :priority, :repair_facility, :repair_type, :location, :summary, :est_completion, :percent_complete

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
