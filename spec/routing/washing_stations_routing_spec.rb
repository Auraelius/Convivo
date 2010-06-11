require 'spec_helper'

describe WashingStationsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/washing_stations" }.should route_to(:controller => "washing_stations", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/washing_stations/new" }.should route_to(:controller => "washing_stations", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/washing_stations/1" }.should route_to(:controller => "washing_stations", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/washing_stations/1/edit" }.should route_to(:controller => "washing_stations", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/washing_stations" }.should route_to(:controller => "washing_stations", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/washing_stations/1" }.should route_to(:controller => "washing_stations", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/washing_stations/1" }.should route_to(:controller => "washing_stations", :action => "destroy", :id => "1") 
    end
  end
end
