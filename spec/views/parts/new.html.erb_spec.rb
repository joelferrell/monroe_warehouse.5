require 'rails_helper'

RSpec.describe "parts/new", type: :view do
  before(:each) do
    assign(:part, Part.new(
      :part_number => 1,
      :part_description => "MyText",
      :unit_price => "9.99",
      :unit_quantity => "9.99",
      :parts_total => "9.99",
      :tax => "9.99",
      :shipping_cost => "9.99",
      :invoice => "MyString"
    ))
  end

  it "renders new part form" do
    render

    assert_select "form[action=?][method=?]", parts_path, "post" do

      assert_select "input#part_part_number[name=?]", "part[part_number]"

      assert_select "textarea#part_part_description[name=?]", "part[part_description]"

      assert_select "input#part_unit_price[name=?]", "part[unit_price]"

      assert_select "input#part_unit_quantity[name=?]", "part[unit_quantity]"

      assert_select "input#part_parts_total[name=?]", "part[parts_total]"

      assert_select "input#part_tax[name=?]", "part[tax]"

      assert_select "input#part_shipping_cost[name=?]", "part[shipping_cost]"

      assert_select "input#part_invoice[name=?]", "part[invoice]"
    end
  end
end
