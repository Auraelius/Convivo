require 'spec_helper'

describe FarmersController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/farmers" }.should route_to(:controller => "farmers", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/farmers/new" }.should route_to(:controller => "farmers", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/farmers/1" }.should route_to(:controller => "farmers", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/farmers/1/edit" }.should route_to(:controller => "farmers", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/farmers" }.should route_to(:controller => "farmers", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/farmers/1" }.should route_to(:controller => "farmers", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/farmers/1" }.should route_to(:controller => "farmers", :action => "destroy", :id => "1") 
    end
  end
end
