class OrganicCertifiersController < ApplicationController
  # GET /organic_certifiers
  # GET /organic_certifiers.xml
  def index
    @organic_certifiers = OrganicCertifier.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @organic_certifiers }
    end
  end

  # GET /organic_certifiers/1
  # GET /organic_certifiers/1.xml
  def show
    @organic_certifier = OrganicCertifier.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @organic_certifier }
    end
  end

  # GET /organic_certifiers/new
  # GET /organic_certifiers/new.xml
  def new
    @organic_certifier = OrganicCertifier.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @organic_certifier }
    end
  end

  # GET /organic_certifiers/1/edit
  def edit
    @organic_certifier = OrganicCertifier.find(params[:id])
  end

  # POST /organic_certifiers
  # POST /organic_certifiers.xml
  def create
    @organic_certifier = OrganicCertifier.new(params[:organic_certifier])

    respond_to do |format|
      if @organic_certifier.save
        format.html { redirect_to(@organic_certifier, :notice => 'OrganicCertifier was successfully created.') }
        format.xml  { render :xml => @organic_certifier, :status => :created, :location => @organic_certifier }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @organic_certifier.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /organic_certifiers/1
  # PUT /organic_certifiers/1.xml
  def update
    @organic_certifier = OrganicCertifier.find(params[:id])

    respond_to do |format|
      if @organic_certifier.update_attributes(params[:organic_certifier])
        format.html { redirect_to(@organic_certifier, :notice => 'OrganicCertifier was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @organic_certifier.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /organic_certifiers/1
  # DELETE /organic_certifiers/1.xml
  def destroy
    @organic_certifier = OrganicCertifier.find(params[:id])
    @organic_certifier.destroy

    respond_to do |format|
      format.html { redirect_to(organic_certifiers_url) }
      format.xml  { head :ok }
    end
  end
end
