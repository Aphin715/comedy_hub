require "spec_helper"

describe ComedyClubsController do
  describe "routing" do

    it "routes to #index" do
      get("/comedy_clubs").should route_to("comedy_clubs#index")
    end

    it "routes to #new" do
      get("/comedy_clubs/new").should route_to("comedy_clubs#new")
    end

    it "routes to #show" do
      get("/comedy_clubs/1").should route_to("comedy_clubs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/comedy_clubs/1/edit").should route_to("comedy_clubs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/comedy_clubs").should route_to("comedy_clubs#create")
    end

    it "routes to #update" do
      put("/comedy_clubs/1").should route_to("comedy_clubs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/comedy_clubs/1").should route_to("comedy_clubs#destroy", :id => "1")
    end

  end
end
