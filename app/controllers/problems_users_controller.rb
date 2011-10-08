class ProblemsUsersController < ApplicationController
  # GET /problems_users
  # GET /problems_users.xml
  def index
    @problems_users = current_user.problems_users

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @problems_users }
    end
  end

  # GET /problems_users/1
  # GET /problems_users/1.xml
  def show
    @problems_user = ProblemsUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @problems_user }
    end
  end

  # GET /problems_users/new
  # GET /problems_users/new.xml
  def new
    @problems_user = ProblemsUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @problems_user }
    end
  end

  # GET /problems_users/1/edit
  def edit
    @problems_user = ProblemsUser.find(params[:id])
  end

  # POST /problems_users
  # POST /problems_users.xml
  def create
    @problems_user = ProblemsUser.new(params[:problems_user])
    @problems_user.user = current_user
    respond_to do |format|
      if @problems_user.save
        format.html { redirect_to(problems_users_path, :notice => 'Problems user was successfully created.') }
        format.xml  { render :xml => @problems_user, :status => :created, :location => @problems_user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @problems_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /problems_users/1
  # PUT /problems_users/1.xml
  def update
    @problems_user = ProblemsUser.find(params[:id])

    respond_to do |format|
      if @problems_user.update_attributes(params[:problems_user])
        format.html { redirect_to(problems_users_path, :notice => 'Problems user was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @problems_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /problems_users/1
  # DELETE /problems_users/1.xml
  def destroy
    @problems_user = ProblemsUser.find(params[:id])
    @problems_user.destroy

    respond_to do |format|
      format.html { redirect_to(problems_users_url) }
      format.xml  { head :ok }
    end
  end
end

