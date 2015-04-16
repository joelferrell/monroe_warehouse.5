require 'rails_helper'

RSpec.describe "timelogs/new", type: :view do
  before(:each) do
    assign(:timelog, Timelog.new(
      :rate => 1.5,
      :nature_work => "MyString",
      :hours_worked => 1.5,
      :total => 1.5,
      :employee => "MyString",
      :work_order => nil,
      :user => nil
    ))
  end

  it "renders new timelog form" do
    render

    assert_select "form[action=?][method=?]", timelogs_path, "post" do

      assert_select "input#timelog_rate[name=?]", "timelog[rate]"

      assert_select "input#timelog_nature_work[name=?]", "timelog[nature_work]"

      assert_select "input#timelog_hours_worked[name=?]", "timelog[hours_worked]"

      assert_select "input#timelog_total[name=?]", "timelog[total]"

      assert_select "input#timelog_employee[name=?]", "timelog[employee]"

      assert_select "input#timelog_work_order_id[name=?]", "timelog[work_order_id]"

      assert_select "input#timelog_user_id[name=?]", "timelog[user_id]"
    end
  end
end
