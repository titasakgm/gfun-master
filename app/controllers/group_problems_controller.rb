class GroupProblemsController < ApplicationController
  # GET /group_problems
  # GET /group_problems.xml
  def index
    @group_problems = GroupProblem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @group_problems }
    end
  end

  # GET /group_problems/1
  # GET /group_problems/1.xml
  def show
    @group_problem = GroupProblem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @group_problem }
    end
  end

  # GET /group_problems/new
  # GET /group_problems/new.xml
  def new
    @group_problem = GroupProblem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @group_problem }
    end
  end

  # GET /group_problems/1/edit
  def edit
    @group_problem = GroupProblem.find(params[:id])
  end

  # POST /group_problems
  # POST /group_problems.xml
  def create
    @group_problem = GroupProblem.new(params[:group_problem])

    respond_to do |format|
      if @group_problem.save
        format.html { redirect_to(@group_problem, :notice => 'Group problem was successfully created.') }
        format.xml  { render :xml => @group_problem, :status => :created, :location => @group_problem }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @group_problem.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /group_problems/1
  # PUT /group_problems/1.xml
  def update
    @group_problem = GroupProblem.find(params[:id])

    respond_to do |format|
      if @group_problem.update_attributes(params[:group_problem])
        format.html { redirect_to(@group_problem, :notice => 'Group problem was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @group_problem.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /group_problems/1
  # DELETE /group_problems/1.xml
  def destroy
    @group_problem = GroupProblem.find(params[:id])
    @group_problem.destroy

    respond_to do |format|
      format.html { redirect_to(group_problems_url) }
      format.xml  { head :ok }
    end
  end
end
