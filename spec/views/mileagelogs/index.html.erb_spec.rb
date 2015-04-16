require 'rails_helper'

RSpec.describe "mileagelogs/index", type: :view do
  before(:each) do
    assign(:mileagelogs, [
      Mileagelog.create!(
        :starting_mile => "9.99",
        :ending_mile => "9.99",
        :rate => "9.99",
        :total_miles => "9.99",
        :mile_total_cost => "9.99",
        :work_order => nil
      ),
      Mileagelog.create!(
        :starting_mile => "9.99",
        :ending_mile => "9.99",
        :rate => "9.99",
        :total_miles => "9.99",
        :mile_total_cost => "9.99",
        :work_order => nil
      )
    ])
  end

  it "renders a list of mileagelogs" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
