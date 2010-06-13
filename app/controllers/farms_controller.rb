class FarmsController < ApplicationController
  # GET /farms
  # GET /farms.xml
  def index
    @farms = Farm.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @farms }
    end
  end

  # GET /farms/1
  # GET /farms/1.xml
  def show
    @farm = Farm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @farm }
    end
  end

  # GET /farms/new
  # GET /farms/new.xml
  def new
    @farm = Farm.new
    @certifiers = OrganicCertifier.find(:all, :order => "name")
    @farmers = Farmer.find(:all, :order => "name")
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @farm }
    end
  end

  # GET /farms/1/edit
  def edit
    @farm = Farm.find(params[:id])
    @certifiers = OrganicCertifier.find(:all, :order => "name")
    @farmers = Farmer.find(:all, :order => "name")
  end

  # POST /farms
  # POST /farms.xml
  def create
    @farm = Farm.new(params[:farm])

    #supply variables for loading selectors
    @certifiers = OrganicCertifier.find(:all, :order => "name")
    @farmers = Farmer.find(:all, :order => "name")

    # the farm can't have a certifier if it's not organic
    if !@farm.organic 
      @farm.organic_certifier = nil
    end

    respond_to do |format|
      if @farm.save
        format.html { redirect_to(@farm, :notice => 'Farm was successfully created.') }
        format.xml  { render :xml => @farm, :status => :created, :location => @farm }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @farm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /farms/1
  # PUT /farms/1.xml
  def update
    @farm = Farm.find(params[:id])

    #supply variables for loading selectors in case there are errors and we need to render the form again
    @certifiers = OrganicCertifier.find(:all, :order => "name")
    @farmers = Farmer.find(:all, :order => "name")

    # the farm can't have a certifier if it's not organic
    # check the form results -- if organic has been turned off, reset the certifier association
    new_attributes = params[:farm]
    
    if new_attributes["organic"] == "0"
      new_attributes.merge!(:organic_certifier_id => nil)
    end

    # and then update the farm record

    respond_to do |format|
      if @farm.update_attributes(new_attributes)
        format.html { redirect_to(@farm, :notice => 'Farm was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @farm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /farms/1
  # DELETE /farms/1.xml
  def destroy
    @farm = Farm.find(params[:id])
    @farm.destroy

    respond_to do |format|
      format.html { redirect_to(farms_url) }
      format.xml  { head :ok }
    end
  end
end
