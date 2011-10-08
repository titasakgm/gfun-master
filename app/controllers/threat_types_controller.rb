class ThreatTypesController < ApplicationController
  # GET /threat_types
  # GET /threat_types.xml
  def index
    @threat_types = ThreatType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @threat_types }
    end
  end

  # GET /threat_types/1
  # GET /threat_types/1.xml
  def show
    @threat_type = ThreatType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @threat_type }
    end
  end

  # GET /threat_types/new
  # GET /threat_types/new.xml
  def new
    @threat_type = ThreatType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @threat_type }
    end
  end

  # GET /threat_types/1/edit
  def edit
    @threat_type = ThreatType.find(params[:id])
  end

  # POST /threat_types
  # POST /threat_types.xml
  def create
    @threat_type = ThreatType.new(params[:threat_type])

    respond_to do |format|
      if @threat_type.save
        format.html { redirect_to(@threat_type, :notice => 'Threat type was successfully created.') }
        format.xml  { render :xml => @threat_type, :status => :created, :location => @threat_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @threat_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /threat_types/1
  # PUT /threat_types/1.xml
  def update
    @threat_type = ThreatType.find(params[:id])

    respond_to do |format|
      if @threat_type.update_attributes(params[:threat_type])
        format.html { redirect_to(@threat_type, :notice => 'Threat type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @threat_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /threat_types/1
  # DELETE /threat_types/1.xml
  def destroy
    @threat_type = ThreatType.find(params[:id])
    @threat_type.destroy

    respond_to do |format|
      format.html { redirect_to(threat_types_url) }
      format.xml  { head :ok }
    end
  end
end
