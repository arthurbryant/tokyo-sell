require "rails_helper"

RSpec.describe ItemDetailsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/item_details").to route_to("item_details#index")
    end

    it "routes to #new" do
      expect(:get => "/item_details/new").to route_to("item_details#new")
    end

    it "routes to #show" do
      expect(:get => "/item_details/1").to route_to("item_details#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/item_details/1/edit").to route_to("item_details#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/item_details").to route_to("item_details#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/item_details/1").to route_to("item_details#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/item_details/1").to route_to("item_details#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/item_details/1").to route_to("item_details#destroy", :id => "1")
    end

  end
end
