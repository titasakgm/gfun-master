class CommunitiesUsersController < ApplicationController
  # GET /communities_users
  # GET /communities_users.xml
  def index
    @communities_users = current_user.communities_users.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @communities_users }
    end
  end

  # GET /communities_users/1
  # GET /communities_users/1.xml
  def show
    @communities_user = CommunitiesUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @communities_user }
    end
  end

  # GET /communities_users/new
  # GET /communities_users/new.xml
  def new
    @communities_user = CommunitiesUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @communities_user }
    end
  end

  # GET /communities_users/1/edit
  def edit
    @communities_user = CommunitiesUser.find(params[:id])
  end

  # POST /communities_users
  # POST /communities_users.xml
  def create
    @communities_user = CommunitiesUser.new(params[:communities_user])
    @communities_user.user = current_user
    respond_to do |format|
      if @communities_user.save
        format.html { redirect_to(communities_users_path, :notice => 'Communities user was successfully created.') }
        format.xml  { render :xml => @communities_user, :status => :created, :location => @communities_user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @communities_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /communities_users/1
  # PUT /communities_users/1.xml
  def update
    @communities_user = CommunitiesUser.find(params[:id])

    respond_to do |format|
      if @communities_user.update_attributes(params[:communities_user])
        format.html { redirect_to(communities_users_path, :notice => 'Communities user was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @communities_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /communities_users/1
  # DELETE /communities_users/1.xml
  def destroy
    @communities_user = CommunitiesUser.find(params[:id])
    @communities_user.destroy

    respond_to do |format|
      format.html { redirect_to(communities_users_url) }
      format.xml  { head :ok }
    end
  end
end

