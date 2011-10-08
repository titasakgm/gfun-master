class Project2BudgetSrcsController < ApplicationController
  # GET /project2_budget_srcs
  # GET /project2_budget_srcs.xml
  def index
    @project2_budget_srcs = Project2BudgetSrc.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @project2_budget_srcs }
    end
  end

  # GET /project2_budget_srcs/1
  # GET /project2_budget_srcs/1.xml
  def show
    @project2_budget_src = Project2BudgetSrc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project2_budget_src }
    end
  end

  # GET /project2_budget_srcs/new
  # GET /project2_budget_srcs/new.xml
  def new
    @project2_budget_src = Project2BudgetSrc.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project2_budget_src }
    end
  end

  # GET /project2_budget_srcs/1/edit
  def edit
    @project2_budget_src = Project2BudgetSrc.find(params[:id])
  end

  # POST /project2_budget_srcs
  # POST /project2_budget_srcs.xml
  def create
    @project2_budget_src = Project2BudgetSrc.new(params[:project2_budget_src])

    respond_to do |format|
      if @project2_budget_src.save
        format.html { redirect_to(@project2_budget_src, :notice => 'Project2 budget src was successfully created.') }
        format.xml  { render :xml => @project2_budget_src, :status => :created, :location => @project2_budget_src }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @project2_budget_src.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /project2_budget_srcs/1
  # PUT /project2_budget_srcs/1.xml
  def update
    @project2_budget_src = Project2BudgetSrc.find(params[:id])

    respond_to do |format|
      if @project2_budget_src.update_attributes(params[:project2_budget_src])
        format.html { redirect_to(@project2_budget_src, :notice => 'Project2 budget src was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project2_budget_src.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /project2_budget_srcs/1
  # DELETE /project2_budget_srcs/1.xml
  def destroy
    @project2_budget_src = Project2BudgetSrc.find(params[:id])
    @project2_budget_src.destroy

    respond_to do |format|
      format.html { redirect_to(project2_budget_srcs_url) }
      format.xml  { head :ok }
    end
  end
end
