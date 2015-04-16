require 'rails_helper'

RSpec.describe "timelogs/show", type: :view do
  before(:each) do
    @timelog = assign(:timelog, Timelog.create!(
      :rate => 1.5,
      :nature_work => "Nature Work",
      :hours_worked => 1.5,
      :total => 1.5,
      :employee => "Employee",
      :work_order => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Nature Work/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Employee/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
