require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        :model => "Model",
        :description => "MyText"
      ),
      Item.create!(
        :model => "Model",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
