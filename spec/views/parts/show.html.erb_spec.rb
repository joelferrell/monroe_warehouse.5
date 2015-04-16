require 'rails_helper'

RSpec.describe "parts/show", type: :view do
  before(:each) do
    @part = assign(:part, Part.create!(
      :part_number => 1,
      :part_description => "MyText",
      :unit_price => "9.99",
      :unit_quantity => "9.99",
      :parts_total => "9.99",
      :tax => "9.99",
      :shipping_cost => "9.99",
      :invoice => "Invoice"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Invoice/)
  end
end
