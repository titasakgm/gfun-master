# encoding : utf-8
class Project2sController < ApplicationController
  # GET /project2s
  # GET /project2s.xml
  def index
    @project2s = current_user.project2s.order("updated_at desc")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @project2s }
    end
  end

  # GET /project2s/1
  # GET /project2s/1.xml
  def show
    @project2 = Project2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project2 }
    end
  end

  # GET /project2s/new
  # GET /project2s/new.xml
  def new
    @project2 = Project2.new
    @project2.build_method1
    @project2.build_method2
    @project2.build_method3
    @project2.build_method4

    3.times { @project2.project2_budget_srcs.build(:nyear => 1) }
    3.times { @project2.project2_budget_srcs.build(:nyear => 2) }
    3.times { @project2.project2_budget_srcs.build(:nyear => 3) }
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project2 }
    end
  end

  # GET /project2s/1/edit
  def edit
    @project2 = Project2.find(params[:id])
  end

  # POST /project2s
  # POST /project2s.xml
  def create
    @project2 = Project2.new(params[:project2])
    @project2.user = current_user
    respond_to do |format|
      if @project2.save
        format.html { redirect_to(@project2, :notice => 'Project2 was successfully created.') }
        format.xml  { render :xml => @project2, :status => :created, :location => @project2 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @project2.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /project2s/1
  # PUT /project2s/1.xml
  def update
    @project2 = Project2.find(params[:id])

    respond_to do |format|
      if @project2.update_attributes(params[:project2])
        format.html { redirect_to(@project2, :notice => 'Project2 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project2.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /project2s/1
  # DELETE /project2s/1.xml
  def destroy
    @project2 = Project2.find(params[:id])
    @project2.destroy

    respond_to do |format|
      format.html { redirect_to(project2s_url) }
      format.xml  { head :ok }
    end
  end
end

