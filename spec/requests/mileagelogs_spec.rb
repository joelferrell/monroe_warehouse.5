require 'rails_helper'

RSpec.describe "Mileagelogs", type: :request do
  describe "GET /mileagelogs" do
    it "works! (now write some real specs)" do
      get mileagelogs_path
      expect(response).to have_http_status(200)
    end
  end
end
