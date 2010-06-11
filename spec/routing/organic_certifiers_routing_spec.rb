require 'spec_helper'

describe OrganicCertifiersController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/organic_certifiers" }.should route_to(:controller => "organic_certifiers", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/organic_certifiers/new" }.should route_to(:controller => "organic_certifiers", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/organic_certifiers/1" }.should route_to(:controller => "organic_certifiers", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/organic_certifiers/1/edit" }.should route_to(:controller => "organic_certifiers", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/organic_certifiers" }.should route_to(:controller => "organic_certifiers", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/organic_certifiers/1" }.should route_to(:controller => "organic_certifiers", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/organic_certifiers/1" }.should route_to(:controller => "organic_certifiers", :action => "destroy", :id => "1") 
    end
  end
end
