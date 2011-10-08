class ProjectsStaffsController < ApplicationController
  #respond_with :html, :js
  # GET /projects_staffs
  # GET /projects_staffs.xml
  def index
    @projects_staffs = ProjectsStaff.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @projects_staffs }
    end
  end

  # GET /projects_staffs/1
  # GET /projects_staffs/1.xml
  def show
    @projects_staff = ProjectsStaff.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @projects_staff }
    end
  end

  # GET /projects_staffs/new
  # GET /projects_staffs/new.xml
  def new
    @projects_staff = ProjectsStaff.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @projects_staff }
    end
  end

  # GET /projects_staffs/1/edit
  def edit
    @projects_staff = ProjectsStaff.find(params[:id])

  end

  # POST /projects_staffs
  # POST /projects_staffs.xml
  def create
    @projects_staff = ProjectsStaff.new(params[:projects_staff])

    respond_to do |format|
      if @projects_staff.save
        format.html { redirect_to(@projects_staff, :notice => 'Projects staff was successfully created.') }
        format.xml  { render :xml => @projects_staff, :status => :created, :location => @projects_staff }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @projects_staff.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /projects_staffs/1
  # PUT /projects_staffs/1.xml
  def update
    @projects_staff = ProjectsStaff.find(params[:id])

    respond_to do |format|
      if @projects_staff.update_attributes(params[:projects_staff])
        format.html { redirect_to(@projects_staff, :notice => 'Projects staff was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @projects_staff.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /projects_staffs/1
  # DELETE /projects_staffs/1.xml
  def destroy
    @projects_staff = ProjectsStaff.find(params[:id])
    @projects_staff.destroy

    respond_to do |format|
      format.html { redirect_to(projects_staffs_url) }
      format.xml  { head :ok }
    end
  end
end

