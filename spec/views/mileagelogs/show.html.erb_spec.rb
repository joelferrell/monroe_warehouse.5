require 'rails_helper'

RSpec.describe "mileagelogs/show", type: :view do
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

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
