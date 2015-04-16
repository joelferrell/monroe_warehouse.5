require 'rails_helper'

RSpec.describe "timelogs/index", type: :view do
  before(:each) do
    assign(:timelogs, [
      Timelog.create!(
        :rate => 1.5,
        :nature_work => "Nature Work",
        :hours_worked => 1.5,
        :total => 1.5,
        :employee => "Employee",
        :work_order => nil,
        :user => nil
      ),
      Timelog.create!(
        :rate => 1.5,
        :nature_work => "Nature Work",
        :hours_worked => 1.5,
        :total => 1.5,
        :employee => "Employee",
        :work_order => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of timelogs" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Nature Work".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Employee".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
