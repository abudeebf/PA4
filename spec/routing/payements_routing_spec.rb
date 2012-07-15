require "spec_helper"

describe PayementsController do
  describe "routing" do

    it "routes to #index" do
      get("/payements").should route_to("payements#index")
    end

    it "routes to #new" do
      get("/payements/new").should route_to("payements#new")
    end

    it "routes to #show" do
      get("/payements/1").should route_to("payements#show", :id => "1")
    end

    it "routes to #edit" do
      get("/payements/1/edit").should route_to("payements#edit", :id => "1")
    end

    it "routes to #create" do
      post("/payements").should route_to("payements#create")
    end

    it "routes to #update" do
      put("/payements/1").should route_to("payements#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/payements/1").should route_to("payements#destroy", :id => "1")
    end

  end
end
