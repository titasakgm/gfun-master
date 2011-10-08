class FactorsProjectsController < ApplicationController
  # GET /factors_projects
  # GET /factors_projects.xml
  def index
    @factors_projects = FactorsProject.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @factors_projects }
    end
  end

  # GET /factors_projects/1
  # GET /factors_projects/1.xml
  def show
    @factors_project = FactorsProject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @factors_project }
    end
  end

  # GET /factors_projects/new
  # GET /factors_projects/new.xml
  def new
    @factors_project = FactorsProject.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @factors_project }
    end
  end

  # GET /factors_projects/1/edit
  def edit
    @factors_project = FactorsProject.find(params[:id])
  end

  # POST /factors_projects
  # POST /factors_projects.xml
  def create
    @factors_project = FactorsProject.new(params[:factors_project])

    respond_to do |format|
      if @factors_project.save
        format.html { redirect_to(@factors_project, :notice => 'Factors project was successfully created.') }
        format.xml  { render :xml => @factors_project, :status => :created, :location => @factors_project }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @factors_project.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /factors_projects/1
  # PUT /factors_projects/1.xml
  def update
    @factors_project = FactorsProject.find(params[:id])

    respond_to do |format|
      if @factors_project.update_attributes(params[:factors_project])
        format.html { redirect_to(@factors_project, :notice => 'Factors project was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @factors_project.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /factors_projects/1
  # DELETE /factors_projects/1.xml
  def destroy
    @factors_project = FactorsProject.find(params[:id])
    @factors_project.destroy

    respond_to do |format|
      format.html { redirect_to(factors_projects_url) }
      format.xml  { head :ok }
    end
  end
end
