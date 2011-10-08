class BudgetSrcsController < ApplicationController
  # GET /budget_srcs
  # GET /budget_srcs.xml
  def index
    @budget_srcs = BudgetSrc.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @budget_srcs }
    end
  end

  # GET /budget_srcs/1
  # GET /budget_srcs/1.xml
  def show
    @budget_src = BudgetSrc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @budget_src }
    end
  end

  # GET /budget_srcs/new
  # GET /budget_srcs/new.xml
  def new
    @budget_src = BudgetSrc.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @budget_src }
    end
  end

  # GET /budget_srcs/1/edit
  def edit
    @budget_src = BudgetSrc.find(params[:id])
  end

  # POST /budget_srcs
  # POST /budget_srcs.xml
  def create
    @budget_src = BudgetSrc.new(params[:budget_src])

    respond_to do |format|
      if @budget_src.save
        format.html { redirect_to(@budget_src, :notice => 'Budget src was successfully created.') }
        format.xml  { render :xml => @budget_src, :status => :created, :location => @budget_src }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @budget_src.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /budget_srcs/1
  # PUT /budget_srcs/1.xml
  def update
    @budget_src = BudgetSrc.find(params[:id])

    respond_to do |format|
      if @budget_src.update_attributes(params[:budget_src])
        format.html { redirect_to(@budget_src, :notice => 'Budget src was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @budget_src.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /budget_srcs/1
  # DELETE /budget_srcs/1.xml
  def destroy
    @budget_src = BudgetSrc.find(params[:id])
    @budget_src.destroy

    respond_to do |format|
      format.html { redirect_to(budget_srcs_url) }
      format.xml  { head :ok }
    end
  end
end
