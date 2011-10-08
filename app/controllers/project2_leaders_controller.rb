class Project2LeadersController < ApplicationController
  # GET /project2_leaders
  # GET /project2_leaders.xml
  def index
    @project2_leaders = Project2Leader.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @project2_leaders }
    end
  end

  # GET /project2_leaders/1
  # GET /project2_leaders/1.xml
  def show
    @project2_leader = Project2Leader.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project2_leader }
    end
  end

  # GET /project2_leaders/new
  # GET /project2_leaders/new.xml
  def new
    @project2_leader = Project2Leader.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project2_leader }
    end
  end

  # GET /project2_leaders/1/edit
  def edit
    @project2_leader = Project2Leader.find(params[:id])
  end

  # POST /project2_leaders
  # POST /project2_leaders.xml
  def create
    @project2_leader = Project2Leader.new(params[:project2_leader])

    respond_to do |format|
      if @project2_leader.save
        format.html { redirect_to(@project2_leader, :notice => 'Project2 leader was successfully created.') }
        format.xml  { render :xml => @project2_leader, :status => :created, :location => @project2_leader }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @project2_leader.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /project2_leaders/1
  # PUT /project2_leaders/1.xml
  def update
    @project2_leader = Project2Leader.find(params[:id])

    respond_to do |format|
      if @project2_leader.update_attributes(params[:project2_leader])
        format.html { redirect_to(@project2_leader, :notice => 'Project2 leader was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project2_leader.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /project2_leaders/1
  # DELETE /project2_leaders/1.xml
  def destroy
    @project2_leader = Project2Leader.find(params[:id])
    @project2_leader.destroy

    respond_to do |format|
      format.html { redirect_to(project2_leaders_url) }
      format.xml  { head :ok }
    end
  end
end
