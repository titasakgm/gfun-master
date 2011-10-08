class UserThreatsController < ApplicationController
  # GET /user_threats
  # GET /user_threats.xml
  def index
    @user_threats = UserThreat.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @user_threats }
    end
  end

  # GET /user_threats/1
  # GET /user_threats/1.xml
  def show
    @user_threat = UserThreat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user_threat }
    end
  end

  # GET /user_threats/new
  # GET /user_threats/new.xml
  def new
    @user_threat = UserThreat.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user_threat }
    end
  end

  # GET /user_threats/1/edit
  def edit
    @user_threat = UserThreat.find(params[:id])
  end

  # POST /user_threats
  # POST /user_threats.xml
  def create
    @user_threat = UserThreat.new(params[:user_threat])

    respond_to do |format|
      if @user_threat.save
        format.html { redirect_to(@user_threat, :notice => 'User threat was successfully created.') }
        format.xml  { render :xml => @user_threat, :status => :created, :location => @user_threat }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user_threat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /user_threats/1
  # PUT /user_threats/1.xml
  def update
    @user_threat = UserThreat.find(params[:id])

    respond_to do |format|
      if @user_threat.update_attributes(params[:user_threat])
        format.html { redirect_to(@user_threat, :notice => 'User threat was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user_threat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_threats/1
  # DELETE /user_threats/1.xml
  def destroy
    @user_threat = UserThreat.find(params[:id])
    @user_threat.destroy

    respond_to do |format|
      format.html { redirect_to(user_threats_url) }
      format.xml  { head :ok }
    end
  end
end
