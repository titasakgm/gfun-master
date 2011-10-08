class YouthProblemsController < ApplicationController
  # GET /youth_problems
  # GET /youth_problems.xml
  def index
    @youth_problems = YouthProblem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @youth_problems }
    end
  end

  # GET /youth_problems/1
  # GET /youth_problems/1.xml
  def show
    @youth_problem = YouthProblem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @youth_problem }
    end
  end

  # GET /youth_problems/new
  # GET /youth_problems/new.xml
  def new
    @youth_problem = YouthProblem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @youth_problem }
    end
  end

  # GET /youth_problems/1/edit
  def edit
    @youth_problem = YouthProblem.find(params[:id])
  end

  # POST /youth_problems
  # POST /youth_problems.xml
  def create
    @youth_problem = YouthProblem.new(params[:youth_problem])

    respond_to do |format|
      if @youth_problem.save
        format.html { redirect_to(@youth_problem, :notice => 'Youth problem was successfully created.') }
        format.xml  { render :xml => @youth_problem, :status => :created, :location => @youth_problem }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @youth_problem.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /youth_problems/1
  # PUT /youth_problems/1.xml
  def update
    @youth_problem = YouthProblem.find(params[:id])

    respond_to do |format|
      if @youth_problem.update_attributes(params[:youth_problem])
        format.html { redirect_to(@youth_problem, :notice => 'Youth problem was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @youth_problem.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /youth_problems/1
  # DELETE /youth_problems/1.xml
  def destroy
    @youth_problem = YouthProblem.find(params[:id])
    @youth_problem.destroy

    respond_to do |format|
      format.html { redirect_to(youth_problems_url) }
      format.xml  { head :ok }
    end
  end
end
