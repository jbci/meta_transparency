require 'rails_helper'

RSpec.describe "AppModels", type: :request do
  describe "GET /app_models" do
    it "works! (now write some real specs)" do
      get app_models_path
      expect(response).to have_http_status(200)
    end
  end
end
