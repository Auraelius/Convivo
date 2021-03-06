require 'spec_helper'

describe WashingStationsController do

  def mock_washing_station(stubs={})
    @mock_washing_station ||= mock_model(WashingStation, stubs)
  end

  describe "GET index" do
    it "assigns all washing_stations as @washing_stations" do
      WashingStation.stub(:find).with(:all).and_return([mock_washing_station])
      get :index
      assigns[:washing_stations].should == [mock_washing_station]
    end
  end

  describe "GET show" do
    it "assigns the requested washing_station as @washing_station" do
      WashingStation.stub(:find).with("37").and_return(mock_washing_station)
      get :show, :id => "37"
      assigns[:washing_station].should equal(mock_washing_station)
    end
  end

  describe "GET new" do
    it "assigns a new washing_station as @washing_station" do
      WashingStation.stub(:new).and_return(mock_washing_station)
      get :new
      assigns[:washing_station].should equal(mock_washing_station)
    end
  end

  describe "GET edit" do
    it "assigns the requested washing_station as @washing_station" do
      WashingStation.stub(:find).with("37").and_return(mock_washing_station)
      get :edit, :id => "37"
      assigns[:washing_station].should equal(mock_washing_station)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created washing_station as @washing_station" do
        WashingStation.stub(:new).with({'these' => 'params'}).and_return(mock_washing_station(:save => true))
        post :create, :washing_station => {:these => 'params'}
        assigns[:washing_station].should equal(mock_washing_station)
      end

      it "redirects to the created washing_station" do
        WashingStation.stub(:new).and_return(mock_washing_station(:save => true))
        post :create, :washing_station => {}
        response.should redirect_to(washing_station_url(mock_washing_station))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved washing_station as @washing_station" do
        WashingStation.stub(:new).with({'these' => 'params'}).and_return(mock_washing_station(:save => false))
        post :create, :washing_station => {:these => 'params'}
        assigns[:washing_station].should equal(mock_washing_station)
      end

      it "re-renders the 'new' template" do
        WashingStation.stub(:new).and_return(mock_washing_station(:save => false))
        post :create, :washing_station => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested washing_station" do
        WashingStation.should_receive(:find).with("37").and_return(mock_washing_station)
        mock_washing_station.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :washing_station => {:these => 'params'}
      end

      it "assigns the requested washing_station as @washing_station" do
        WashingStation.stub(:find).and_return(mock_washing_station(:update_attributes => true))
        put :update, :id => "1"
        assigns[:washing_station].should equal(mock_washing_station)
      end

      it "redirects to the washing_station" do
        WashingStation.stub(:find).and_return(mock_washing_station(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(washing_station_url(mock_washing_station))
      end
    end

    describe "with invalid params" do
      it "updates the requested washing_station" do
        WashingStation.should_receive(:find).with("37").and_return(mock_washing_station)
        mock_washing_station.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :washing_station => {:these => 'params'}
      end

      it "assigns the washing_station as @washing_station" do
        WashingStation.stub(:find).and_return(mock_washing_station(:update_attributes => false))
        put :update, :id => "1"
        assigns[:washing_station].should equal(mock_washing_station)
      end

      it "re-renders the 'edit' template" do
        WashingStation.stub(:find).and_return(mock_washing_station(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested washing_station" do
      WashingStation.should_receive(:find).with("37").and_return(mock_washing_station)
      mock_washing_station.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the washing_stations list" do
      WashingStation.stub(:find).and_return(mock_washing_station(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(washing_stations_url)
    end
  end

end
