class Project2FactorsController < ApplicationController
  # GET /project2_factors
  # GET /project2_factors.xml
  def index
    @project2_factors = Project2Factor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @project2_factors }
    end
  end

  # GET /project2_factors/1
  # GET /project2_factors/1.xml
  def show
    @project2_factor = Project2Factor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project2_factor }
    end
  end

  # GET /project2_factors/new
  # GET /project2_factors/new.xml
  def new
    @project2_factor = Project2Factor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project2_factor }
    end
  end

  # GET /project2_factors/1/edit
  def edit
    @project2_factor = Project2Factor.find(params[:id])
  end

  # POST /project2_factors
  # POST /project2_factors.xml
  def create
    @project2_factor = Project2Factor.new(params[:project2_factor])

    respond_to do |format|
      if @project2_factor.save
        format.html { redirect_to(@project2_factor, :notice => 'Project2 factor was successfully created.') }
        format.xml  { render :xml => @project2_factor, :status => :created, :location => @project2_factor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @project2_factor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /project2_factors/1
  # PUT /project2_factors/1.xml
  def update
    @project2_factor = Project2Factor.find(params[:id])

    respond_to do |format|
      if @project2_factor.update_attributes(params[:project2_factor])
        format.html { redirect_to(@project2_factor, :notice => 'Project2 factor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project2_factor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /project2_factors/1
  # DELETE /project2_factors/1.xml
  def destroy
    @project2_factor = Project2Factor.find(params[:id])
    @project2_factor.destroy

    respond_to do |format|
      format.html { redirect_to(project2_factors_url) }
      format.xml  { head :ok }
    end
  end
end
