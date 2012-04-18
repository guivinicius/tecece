require "spec_helper"

describe CollegesController do
  describe "routing" do

    it "routes to #index" do
      get("/colleges").should route_to("colleges#index")
    end

    it "routes to #new" do
      get("/colleges/new").should route_to("colleges#new")
    end

    it "routes to #show" do
      get("/colleges/1").should route_to("colleges#show", :id => "1")
    end

    it "routes to #edit" do
      get("/colleges/1/edit").should route_to("colleges#edit", :id => "1")
    end

    it "routes to #create" do
      post("/colleges").should route_to("colleges#create")
    end

    it "routes to #update" do
      put("/colleges/1").should route_to("colleges#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/colleges/1").should route_to("colleges#destroy", :id => "1")
    end

  end
end
