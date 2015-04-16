require 'rails_helper'

RSpec.describe "mileagelogs/edit", type: :view do
  before(:each) do
    @mileagelog = assign(:mileagelog, Mileagelog.create!(
      :starting_mile => "9.99",
      :ending_mile => "9.99",
      :rate => "9.99",
      :total_miles => "9.99",
      :mile_total_cost => "9.99",
      :work_order => nil
    ))
  end

  it "renders the edit mileagelog form" do
    render

    assert_select "form[action=?][method=?]", mileagelog_path(@mileagelog), "post" do

      assert_select "input#mileagelog_starting_mile[name=?]", "mileagelog[starting_mile]"

      assert_select "input#mileagelog_ending_mile[name=?]", "mileagelog[ending_mile]"

      assert_select "input#mileagelog_rate[name=?]", "mileagelog[rate]"

      assert_select "input#mileagelog_total_miles[name=?]", "mileagelog[total_miles]"

      assert_select "input#mileagelog_mile_total_cost[name=?]", "mileagelog[mile_total_cost]"

      assert_select "input#mileagelog_work_order_id[name=?]", "mileagelog[work_order_id]"
    end
  end
end
