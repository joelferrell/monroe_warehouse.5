require 'rails_helper'

RSpec.describe "parts/index", type: :view do
  before(:each) do
    assign(:parts, [
      Part.create!(
        :part_number => 1,
        :part_description => "MyText",
        :unit_price => "9.99",
        :unit_quantity => "9.99",
        :parts_total => "9.99",
        :tax => "9.99",
        :shipping_cost => "9.99",
        :invoice => "Invoice"
      ),
      Part.create!(
        :part_number => 1,
        :part_description => "MyText",
        :unit_price => "9.99",
        :unit_quantity => "9.99",
        :parts_total => "9.99",
        :tax => "9.99",
        :shipping_cost => "9.99",
        :invoice => "Invoice"
      )
    ])
  end

  it "renders a list of parts" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Invoice".to_s, :count => 2
  end
end
