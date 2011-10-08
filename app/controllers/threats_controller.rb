class ThreatsController < ApplicationController
  # GET /threats
  # GET /threats.xml
  def index
    @threats = Threat.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @threats }
    end
  end

  # GET /threats/1
  # GET /threats/1.xml
  def show
    @threat = Threat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @threat }
    end
  end

  # GET /threats/new
  # GET /threats/new.xml
  def new
    @threat = Threat.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @threat }
    end
  end

  # GET /threats/1/edit
  def edit
    @threat = Threat.find(params[:id])
  end

  # POST /threats
  # POST /threats.xml
  def create
    @threat = Threat.new(params[:threat])

    respond_to do |format|
      if @threat.save
        format.html { redirect_to(@threat, :notice => 'Threat was successfully created.') }
        format.xml  { render :xml => @threat, :status => :created, :location => @threat }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @threat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /threats/1
  # PUT /threats/1.xml
  def update
    @threat = Threat.find(params[:id])

    respond_to do |format|
      if @threat.update_attributes(params[:threat])
        format.html { redirect_to(@threat, :notice => 'Threat was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @threat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /threats/1
  # DELETE /threats/1.xml
  def destroy
    @threat = Threat.find(params[:id])
    @threat.destroy

    respond_to do |format|
      format.html { redirect_to(threats_url) }
      format.xml  { head :ok }
    end
  end
end
