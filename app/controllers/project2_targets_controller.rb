class Project2TargetsController < ApplicationController
  # GET /project2_targets
  # GET /project2_targets.xml
  def index
    @project2_targets = Project2Target.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @project2_targets }
    end
  end

  # GET /project2_targets/1
  # GET /project2_targets/1.xml
  def show
    @project2_target = Project2Target.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project2_target }
    end
  end

  # GET /project2_targets/new
  # GET /project2_targets/new.xml
  def new
    @project2_target = Project2Target.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project2_target }
    end
  end

  # GET /project2_targets/1/edit
  def edit
    @project2_target = Project2Target.find(params[:id])
  end

  # POST /project2_targets
  # POST /project2_targets.xml
  def create
    @project2_target = Project2Target.new(params[:project2_target])

    respond_to do |format|
      if @project2_target.save
        format.html { redirect_to(@project2_target, :notice => 'Project2 target was successfully created.') }
        format.xml  { render :xml => @project2_target, :status => :created, :location => @project2_target }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @project2_target.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /project2_targets/1
  # PUT /project2_targets/1.xml
  def update
    @project2_target = Project2Target.find(params[:id])

    respond_to do |format|
      if @project2_target.update_attributes(params[:project2_target])
        format.html { redirect_to(@project2_target, :notice => 'Project2 target was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project2_target.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /project2_targets/1
  # DELETE /project2_targets/1.xml
  def destroy
    @project2_target = Project2Target.find(params[:id])
    @project2_target.destroy

    respond_to do |format|
      format.html { redirect_to(project2_targets_url) }
      format.xml  { head :ok }
    end
  end
end
