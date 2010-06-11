require 'spec_helper'

describe FarmersController do

  def mock_farmer(stubs={})
    @mock_farmer ||= mock_model(Farmer, stubs)
  end

  describe "GET index" do
    it "assigns all farmers as @farmers" do
      Farmer.stub(:find).with(:all).and_return([mock_farmer])
      get :index
      assigns[:farmers].should == [mock_farmer]
    end
  end

  describe "GET show" do
    it "assigns the requested farmer as @farmer" do
      Farmer.stub(:find).with("37").and_return(mock_farmer)
      get :show, :id => "37"
      assigns[:farmer].should equal(mock_farmer)
    end
  end

  describe "GET new" do
    it "assigns a new farmer as @farmer" do
      Farmer.stub(:new).and_return(mock_farmer)
      get :new
      assigns[:farmer].should equal(mock_farmer)
    end
  end

  describe "GET edit" do
    it "assigns the requested farmer as @farmer" do
      Farmer.stub(:find).with("37").and_return(mock_farmer)
      get :edit, :id => "37"
      assigns[:farmer].should equal(mock_farmer)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created farmer as @farmer" do
        Farmer.stub(:new).with({'these' => 'params'}).and_return(mock_farmer(:save => true))
        post :create, :farmer => {:these => 'params'}
        assigns[:farmer].should equal(mock_farmer)
      end

      it "redirects to the created farmer" do
        Farmer.stub(:new).and_return(mock_farmer(:save => true))
        post :create, :farmer => {}
        response.should redirect_to(farmer_url(mock_farmer))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved farmer as @farmer" do
        Farmer.stub(:new).with({'these' => 'params'}).and_return(mock_farmer(:save => false))
        post :create, :farmer => {:these => 'params'}
        assigns[:farmer].should equal(mock_farmer)
      end

      it "re-renders the 'new' template" do
        Farmer.stub(:new).and_return(mock_farmer(:save => false))
        post :create, :farmer => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested farmer" do
        Farmer.should_receive(:find).with("37").and_return(mock_farmer)
        mock_farmer.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :farmer => {:these => 'params'}
      end

      it "assigns the requested farmer as @farmer" do
        Farmer.stub(:find).and_return(mock_farmer(:update_attributes => true))
        put :update, :id => "1"
        assigns[:farmer].should equal(mock_farmer)
      end

      it "redirects to the farmer" do
        Farmer.stub(:find).and_return(mock_farmer(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(farmer_url(mock_farmer))
      end
    end

    describe "with invalid params" do
      it "updates the requested farmer" do
        Farmer.should_receive(:find).with("37").and_return(mock_farmer)
        mock_farmer.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :farmer => {:these => 'params'}
      end

      it "assigns the farmer as @farmer" do
        Farmer.stub(:find).and_return(mock_farmer(:update_attributes => false))
        put :update, :id => "1"
        assigns[:farmer].should equal(mock_farmer)
      end

      it "re-renders the 'edit' template" do
        Farmer.stub(:find).and_return(mock_farmer(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested farmer" do
      Farmer.should_receive(:find).with("37").and_return(mock_farmer)
      mock_farmer.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the farmers list" do
      Farmer.stub(:find).and_return(mock_farmer(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(farmers_url)
    end
  end

end
