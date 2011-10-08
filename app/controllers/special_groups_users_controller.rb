class SpecialGroupsUsersController < ApplicationController
  # GET /special_groups_users
  # GET /special_groups_users.xml
  def index
    @special_groups_users = current_user.special_groups_users

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @special_groups_users }
    end
  end

  # GET /special_groups_users/1
  # GET /special_groups_users/1.xml
  def show
    @special_groups_user = SpecialGroupsUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @special_groups_user }
    end
  end

  # GET /special_groups_users/new
  # GET /special_groups_users/new.xml
  def new
    @special_groups_user = SpecialGroupsUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @special_groups_user }
    end
  end

  # GET /special_groups_users/1/edit
  def edit
    @special_groups_user = SpecialGroupsUser.find(params[:id])
  end

  # POST /special_groups_users
  # POST /special_groups_users.xml
  def create
    @special_groups_user = SpecialGroupsUser.new(params[:special_groups_user])
    @special_groups_user.user = current_user
    respond_to do |format|
      if @special_groups_user.save
        format.html { redirect_to(special_groups_users_path, :notice => 'Special groups user was successfully created.') }
        format.xml  { render :xml => @special_groups_user, :status => :created, :location => @special_groups_user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @special_groups_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /special_groups_users/1
  # PUT /special_groups_users/1.xml
  def update
    @special_groups_user = SpecialGroupsUser.find(params[:id])

    respond_to do |format|
      if @special_groups_user.update_attributes(params[:special_groups_user])
        format.html { redirect_to(special_groups_users_path, :notice => 'Special groups user was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @special_groups_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /special_groups_users/1
  # DELETE /special_groups_users/1.xml
  def destroy
    @special_groups_user = SpecialGroupsUser.find(params[:id])
    @special_groups_user.destroy

    respond_to do |format|
      format.html { redirect_to(special_groups_users_url) }
      format.xml  { head :ok }
    end
  end
end

