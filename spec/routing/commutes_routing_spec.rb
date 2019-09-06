require "rails_helper"

RSpec.describe CommutesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/commutes").to route_to("commutes#index")
    end


    it "routes to #show" do
      expect(:get => "/commutes/1").to route_to("commutes#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/commutes").to route_to("commutes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/commutes/1").to route_to("commutes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/commutes/1").to route_to("commutes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/commutes/1").to route_to("commutes#destroy", :id => "1")
    end

  end
end
