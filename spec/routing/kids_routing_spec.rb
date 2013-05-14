require "spec_helper"

describe KidsController do
  describe "routing" do

    it "routes to #index" do
      get("/kids").should route_to("kids#index")
    end

    it "routes to #new" do
      get("/kids/new").should route_to("kids#new")
    end

    it "routes to #show" do
      get("/kids/1").should route_to("kids#show", :id => "1")
    end

    it "routes to #edit" do
      get("/kids/1/edit").should route_to("kids#edit", :id => "1")
    end

    it "routes to #create" do
      post("/kids").should route_to("kids#create")
    end

    it "routes to #update" do
      put("/kids/1").should route_to("kids#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/kids/1").should route_to("kids#destroy", :id => "1")
    end

  end
end
