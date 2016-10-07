require "rails_helper"

RSpec.describe AppModelsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/app_models").to route_to("app_models#index")
    end

    it "routes to #new" do
      expect(:get => "/app_models/new").to route_to("app_models#new")
    end

    it "routes to #show" do
      expect(:get => "/app_models/1").to route_to("app_models#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/app_models/1/edit").to route_to("app_models#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/app_models").to route_to("app_models#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/app_models/1").to route_to("app_models#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/app_models/1").to route_to("app_models#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/app_models/1").to route_to("app_models#destroy", :id => "1")
    end

  end
end
