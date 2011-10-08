class SchoolsUsersController < ApplicationController
  # GET /schools_users
  # GET /schools_users.xml
  def index
    @schools_users = current_user.schools_users

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @schools_users }
    end
  end

  # GET /schools_users/1
  # GET /schools_users/1.xml
  def show
    @schools_user = SchoolsUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @schools_user }
    end
  end

  # GET /schools_users/new
  # GET /schools_users/new.xml
  def new
    @schools_user = SchoolsUser.new
    @schools = current_user.ladmin.schools
    respond_to do |format|

      format.html # new.html.erb
      format.xml  { render :xml => @schools_user }
    end
  end

  # GET /schools_users/1/edit
  def edit
    @schools_user = SchoolsUser.find(params[:id])
  end

  # POST /schools_users
  # POST /schools_users.xml
  def create
    @schools_user = SchoolsUser.new(params[:schools_user])
    @schools_user.user = current_user
    respond_to do |format|
      if @schools_user.save
        format.html { redirect_to(schools_users_path, :notice => 'Schools user was successfully created.') }
        format.xml  { render :xml => @schools_user, :status => :created, :location => @schools_user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @schools_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /schools_users/1
  # PUT /schools_users/1.xml
  def update
    @schools_user = SchoolsUser.find(params[:id])

    respond_to do |format|
      if @schools_user.update_attributes(params[:schools_user])
        format.html { redirect_to(schools_users_path, :notice => 'Schools user was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @schools_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /schools_users/1
  # DELETE /schools_users/1.xml
  def destroy
    @schools_user = SchoolsUser.find(params[:id])
    @schools_user.destroy

    respond_to do |format|
      format.html { redirect_to(schools_users_url) }
      format.xml  { head :ok }
    end
  end
end

