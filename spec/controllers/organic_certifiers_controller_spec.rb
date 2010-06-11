require 'spec_helper'

describe OrganicCertifiersController do

  def mock_organic_certifier(stubs={})
    @mock_organic_certifier ||= mock_model(OrganicCertifier, stubs)
  end

  describe "GET index" do
    it "assigns all organic_certifiers as @organic_certifiers" do
      OrganicCertifier.stub(:find).with(:all).and_return([mock_organic_certifier])
      get :index
      assigns[:organic_certifiers].should == [mock_organic_certifier]
    end
  end

  describe "GET show" do
    it "assigns the requested organic_certifier as @organic_certifier" do
      OrganicCertifier.stub(:find).with("37").and_return(mock_organic_certifier)
      get :show, :id => "37"
      assigns[:organic_certifier].should equal(mock_organic_certifier)
    end
  end

  describe "GET new" do
    it "assigns a new organic_certifier as @organic_certifier" do
      OrganicCertifier.stub(:new).and_return(mock_organic_certifier)
      get :new
      assigns[:organic_certifier].should equal(mock_organic_certifier)
    end
  end

  describe "GET edit" do
    it "assigns the requested organic_certifier as @organic_certifier" do
      OrganicCertifier.stub(:find).with("37").and_return(mock_organic_certifier)
      get :edit, :id => "37"
      assigns[:organic_certifier].should equal(mock_organic_certifier)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created organic_certifier as @organic_certifier" do
        OrganicCertifier.stub(:new).with({'these' => 'params'}).and_return(mock_organic_certifier(:save => true))
        post :create, :organic_certifier => {:these => 'params'}
        assigns[:organic_certifier].should equal(mock_organic_certifier)
      end

      it "redirects to the created organic_certifier" do
        OrganicCertifier.stub(:new).and_return(mock_organic_certifier(:save => true))
        post :create, :organic_certifier => {}
        response.should redirect_to(organic_certifier_url(mock_organic_certifier))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved organic_certifier as @organic_certifier" do
        OrganicCertifier.stub(:new).with({'these' => 'params'}).and_return(mock_organic_certifier(:save => false))
        post :create, :organic_certifier => {:these => 'params'}
        assigns[:organic_certifier].should equal(mock_organic_certifier)
      end

      it "re-renders the 'new' template" do
        OrganicCertifier.stub(:new).and_return(mock_organic_certifier(:save => false))
        post :create, :organic_certifier => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested organic_certifier" do
        OrganicCertifier.should_receive(:find).with("37").and_return(mock_organic_certifier)
        mock_organic_certifier.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :organic_certifier => {:these => 'params'}
      end

      it "assigns the requested organic_certifier as @organic_certifier" do
        OrganicCertifier.stub(:find).and_return(mock_organic_certifier(:update_attributes => true))
        put :update, :id => "1"
        assigns[:organic_certifier].should equal(mock_organic_certifier)
      end

      it "redirects to the organic_certifier" do
        OrganicCertifier.stub(:find).and_return(mock_organic_certifier(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(organic_certifier_url(mock_organic_certifier))
      end
    end

    describe "with invalid params" do
      it "updates the requested organic_certifier" do
        OrganicCertifier.should_receive(:find).with("37").and_return(mock_organic_certifier)
        mock_organic_certifier.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :organic_certifier => {:these => 'params'}
      end

      it "assigns the organic_certifier as @organic_certifier" do
        OrganicCertifier.stub(:find).and_return(mock_organic_certifier(:update_attributes => false))
        put :update, :id => "1"
        assigns[:organic_certifier].should equal(mock_organic_certifier)
      end

      it "re-renders the 'edit' template" do
        OrganicCertifier.stub(:find).and_return(mock_organic_certifier(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested organic_certifier" do
      OrganicCertifier.should_receive(:find).with("37").and_return(mock_organic_certifier)
      mock_organic_certifier.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the organic_certifiers list" do
      OrganicCertifier.stub(:find).and_return(mock_organic_certifier(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(organic_certifiers_url)
    end
  end

end
