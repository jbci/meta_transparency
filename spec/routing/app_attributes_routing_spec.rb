require "rails_helper"

RSpec.describe AppAttributesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/app_attributes").to route_to("app_attributes#index")
    end

    it "routes to #new" do
      expect(:get => "/app_attributes/new").to route_to("app_attributes#new")
    end

    it "routes to #show" do
      expect(:get => "/app_attributes/1").to route_to("app_attributes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/app_attributes/1/edit").to route_to("app_attributes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/app_attributes").to route_to("app_attributes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/app_attributes/1").to route_to("app_attributes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/app_attributes/1").to route_to("app_attributes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/app_attributes/1").to route_to("app_attributes#destroy", :id => "1")
    end

  end
end
