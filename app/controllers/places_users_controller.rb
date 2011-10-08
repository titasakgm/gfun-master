class PlacesUsersController < ApplicationController
  # GET /places_users
  # GET /places_users.xml
  def index
    @places_users = current_user.places_users

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @places_users }
    end
  end

  # GET /places_users/1
  # GET /places_users/1.xml
  def show
    @places_user = PlacesUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @places_user }
    end
  end

  # GET /places_users/new
  # GET /places_users/new.xml
  def new
    @places_user = PlacesUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @places_user }
    end
  end

  # GET /places_users/1/edit
  def edit
    @places_user = PlacesUser.find(params[:id])
  end

  # POST /places_users
  # POST /places_users.xml
  def create
    @places_user = PlacesUser.new(params[:places_user])
    @places_user.user = current_user
    respond_to do |format|
      if @places_user.save
        format.html { redirect_to(places_users_path, :notice => 'Places user was successfully created.') }
        format.xml  { render :xml => @places_user, :status => :created, :location => @places_user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @places_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /places_users/1
  # PUT /places_users/1.xml
  def update
    @places_user = PlacesUser.find(params[:id])

    respond_to do |format|
      if @places_user.update_attributes(params[:places_user])
        format.html { redirect_to(places_users_path, :notice => 'Places user was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @places_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /places_users/1
  # DELETE /places_users/1.xml
  def destroy
    @places_user = PlacesUser.find(params[:id])
    @places_user.destroy

    respond_to do |format|
      format.html { redirect_to(places_users_url) }
      format.xml  { head :ok }
    end
  end
end

