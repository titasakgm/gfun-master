class ProjectsController < ApplicationController

  # GET /projects
  # GET /projects.xml
  def index
    #@projects = Project.order("id desc")
    @projects = current_user.projects
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @projects }
    end
  end

  # GET /projects/1
  # GET /projects/1.xml
  def show
    @project = Project.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project }
    end
  end

  # GET /projects/new
  # GET /projects/new.xml
  def new
    @project = Project.new
    #@topic.linkers.build.build_article
    #3.times { @project.staffs.build }
    #3.times { @project.projects_staffs.build.build_staff }
    3.times { @project.projects_staffs.build}
    3.times { @project.activities_projects.build }
    @project.build_youth_progress
    @project.problems_projects.build
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project }
    end
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.xml
  def create
    @project = Project.new(params[:project])

    respond_to do |format|
      if @project.save
        @project.user = current_user
        @project.save
        format.html { redirect_to(projects_path, :notice => 'Project was successfully created.') }
        format.xml  { render :xml => @project, :status => :created, :location => @project }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @project.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /projects/1
  # PUT /projects/1.xml
  def update
    @project = Project.find(params[:id])
    params[:project][:problem_ids] ||= []
    params[:project][:target_ids] ||= []
    params[:project][:factor_ids] ||= []
    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to(projects_path, :notice => 'Project was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.xml
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to(projects_url) }
      format.xml  { head :ok }
    end
  end
  def summary
    render :layout => false
  end
end

