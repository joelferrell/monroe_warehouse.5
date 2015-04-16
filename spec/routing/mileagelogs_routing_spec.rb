require "rails_helper"

RSpec.describe MileagelogsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mileagelogs").to route_to("mileagelogs#index")
    end

    it "routes to #new" do
      expect(:get => "/mileagelogs/new").to route_to("mileagelogs#new")
    end

    it "routes to #show" do
      expect(:get => "/mileagelogs/1").to route_to("mileagelogs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mileagelogs/1/edit").to route_to("mileagelogs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/mileagelogs").to route_to("mileagelogs#create")
    end

    it "routes to #update" do
      expect(:put => "/mileagelogs/1").to route_to("mileagelogs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mileagelogs/1").to route_to("mileagelogs#destroy", :id => "1")
    end

  end
end
