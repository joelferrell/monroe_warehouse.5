require 'rails_helper'

RSpec.describe "work_orders/edit", type: :view do
  before(:each) do
    @work_order = assign(:work_order, WorkOrder.create!(
      :wo_number => 1,
      :requestor => "MyString",
      :priority => "MyString",
      :repair_facility => "MyString",
      :repair_type => "MyString",
      :location => "MyString",
      :summary => "MyText",
      :percent_complete => 1,
      :user => nil,
      :item => nil
    ))
  end

  it "renders the edit work_order form" do
    render

    assert_select "form[action=?][method=?]", work_order_path(@work_order), "post" do

      assert_select "input#work_order_wo_number[name=?]", "work_order[wo_number]"

      assert_select "input#work_order_requestor[name=?]", "work_order[requestor]"

      assert_select "input#work_order_priority[name=?]", "work_order[priority]"

      assert_select "input#work_order_repair_facility[name=?]", "work_order[repair_facility]"

      assert_select "input#work_order_repair_type[name=?]", "work_order[repair_type]"

      assert_select "input#work_order_location[name=?]", "work_order[location]"

      assert_select "textarea#work_order_summary[name=?]", "work_order[summary]"

      assert_select "input#work_order_percent_complete[name=?]", "work_order[percent_complete]"

      assert_select "input#work_order_user_id[name=?]", "work_order[user_id]"

      assert_select "input#work_order_item_id[name=?]", "work_order[item_id]"
    end
  end
end
