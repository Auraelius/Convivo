class WashingStationsController < ApplicationController
  # GET /washing_stations
  # GET /washing_stations.xml
  def index
    @washing_stations = WashingStation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @washing_stations }
    end
  end

  # GET /washing_stations/1
  # GET /washing_stations/1.xml
  def show
    @washing_station = WashingStation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @washing_station }
    end
  end

  # GET /washing_stations/new
  # GET /washing_stations/new.xml
  def new
    @washing_station = WashingStation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @washing_station }
    end
  end

  # GET /washing_stations/1/edit
  def edit
    @washing_station = WashingStation.find(params[:id])
  end

  # POST /washing_stations
  # POST /washing_stations.xml
  def create
    @washing_station = WashingStation.new(params[:washing_station])

    respond_to do |format|
      if @washing_station.save
        format.html { redirect_to(@washing_station, :notice => 'WashingStation was successfully created.') }
        format.xml  { render :xml => @washing_station, :status => :created, :location => @washing_station }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @washing_station.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /washing_stations/1
  # PUT /washing_stations/1.xml
  def update
    @washing_station = WashingStation.find(params[:id])

    respond_to do |format|
      if @washing_station.update_attributes(params[:washing_station])
        format.html { redirect_to(@washing_station, :notice => 'WashingStation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @washing_station.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /washing_stations/1
  # DELETE /washing_stations/1.xml
  def destroy
    @washing_station = WashingStation.find(params[:id])
    @washing_station.destroy

    respond_to do |format|
      format.html { redirect_to(washing_stations_url) }
      format.xml  { head :ok }
    end
  end
end
