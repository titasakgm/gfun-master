class ActivitiesProjectsController < ApplicationController
  # GET /activities_projects
  # GET /activities_projects.xml
  def index
    @activities_projects = ActivitiesProject.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @activities_projects }
    end
  end

  # GET /activities_projects/1
  # GET /activities_projects/1.xml
  def show
    @activities_project = ActivitiesProject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @activities_project }
    end
  end

  # GET /activities_projects/new
  # GET /activities_projects/new.xml
  def new
    @activities_project = ActivitiesProject.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @activities_project }
    end
  end

  # GET /activities_projects/1/edit
  def edit
    @activities_project = ActivitiesProject.find(params[:id])
  end

  # POST /activities_projects
  # POST /activities_projects.xml
  def create
    @activities_project = ActivitiesProject.new(params[:activities_project])

    respond_to do |format|
      if @activities_project.save
        format.html { redirect_to(@activities_project, :notice => 'Activities project was successfully created.') }
        format.xml  { render :xml => @activities_project, :status => :created, :location => @activities_project }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @activities_project.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /activities_projects/1
  # PUT /activities_projects/1.xml
  def update
    @activities_project = ActivitiesProject.find(params[:id])

    respond_to do |format|
      if @activities_project.update_attributes(params[:activities_project])
        format.html { redirect_to(@activities_project, :notice => 'Activities project was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @activities_project.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /activities_projects/1
  # DELETE /activities_projects/1.xml
  def destroy
    @activities_project = ActivitiesProject.find(params[:id])
    @activities_project.destroy

    respond_to do |format|
      format.html { redirect_to(activities_projects_url) }
      format.xml  { head :ok }
    end
  end
end
