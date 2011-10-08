class SocialProblemsController < ApplicationController
  # GET /social_problems
  # GET /social_problems.xml
  def index
    @social_problems = SocialProblem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @social_problems }
    end
  end

  # GET /social_problems/1
  # GET /social_problems/1.xml
  def show
    @social_problem = SocialProblem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @social_problem }
    end
  end

  # GET /social_problems/new
  # GET /social_problems/new.xml
  def new
    @social_problem = SocialProblem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @social_problem }
    end
  end

  # GET /social_problems/1/edit
  def edit
    @social_problem = SocialProblem.find(params[:id])
  end

  # POST /social_problems
  # POST /social_problems.xml
  def create
    @social_problem = SocialProblem.new(params[:social_problem])

    respond_to do |format|
      if @social_problem.save
        format.html { redirect_to(@social_problem, :notice => 'Social problem was successfully created.') }
        format.xml  { render :xml => @social_problem, :status => :created, :location => @social_problem }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @social_problem.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /social_problems/1
  # PUT /social_problems/1.xml
  def update
    @social_problem = SocialProblem.find(params[:id])

    respond_to do |format|
      if @social_problem.update_attributes(params[:social_problem])
        format.html { redirect_to(@social_problem, :notice => 'Social problem was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @social_problem.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /social_problems/1
  # DELETE /social_problems/1.xml
  def destroy
    @social_problem = SocialProblem.find(params[:id])
    @social_problem.destroy

    respond_to do |format|
      format.html { redirect_to(social_problems_url) }
      format.xml  { head :ok }
    end
  end
end
