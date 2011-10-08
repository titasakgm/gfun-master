class Project2SpecialGroupsController < ApplicationController
  # GET /project2_special_groups
  # GET /project2_special_groups.xml
  def index
    @project2_special_groups = Project2SpecialGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @project2_special_groups }
    end
  end

  # GET /project2_special_groups/1
  # GET /project2_special_groups/1.xml
  def show
    @project2_special_group = Project2SpecialGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project2_special_group }
    end
  end

  # GET /project2_special_groups/new
  # GET /project2_special_groups/new.xml
  def new
    @project2_special_group = Project2SpecialGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project2_special_group }
    end
  end

  # GET /project2_special_groups/1/edit
  def edit
    @project2_special_group = Project2SpecialGroup.find(params[:id])
  end

  # POST /project2_special_groups
  # POST /project2_special_groups.xml
  def create
    @project2_special_group = Project2SpecialGroup.new(params[:project2_special_group])

    respond_to do |format|
      if @project2_special_group.save
        format.html { redirect_to(@project2_special_group, :notice => 'Project2 special group was successfully created.') }
        format.xml  { render :xml => @project2_special_group, :status => :created, :location => @project2_special_group }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @project2_special_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /project2_special_groups/1
  # PUT /project2_special_groups/1.xml
  def update
    @project2_special_group = Project2SpecialGroup.find(params[:id])

    respond_to do |format|
      if @project2_special_group.update_attributes(params[:project2_special_group])
        format.html { redirect_to(@project2_special_group, :notice => 'Project2 special group was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project2_special_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /project2_special_groups/1
  # DELETE /project2_special_groups/1.xml
  def destroy
    @project2_special_group = Project2SpecialGroup.find(params[:id])
    @project2_special_group.destroy

    respond_to do |format|
      format.html { redirect_to(project2_special_groups_url) }
      format.xml  { head :ok }
    end
  end
end
