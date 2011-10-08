class SpecialGroupsController < ApplicationController
  # GET /special_groups
  # GET /special_groups.xml
  def index
    @special_groups = SpecialGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @special_groups }
    end
  end

  # GET /special_groups/1
  # GET /special_groups/1.xml
  def show
    @special_group = SpecialGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @special_group }
    end
  end

  # GET /special_groups/new
  # GET /special_groups/new.xml
  def new
    @special_group = SpecialGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @special_group }
    end
  end

  # GET /special_groups/1/edit
  def edit
    @special_group = SpecialGroup.find(params[:id])
  end

  # POST /special_groups
  # POST /special_groups.xml
  def create
    @special_group = SpecialGroup.new(params[:special_group])

    respond_to do |format|
      if @special_group.save
        format.html { redirect_to(@special_group, :notice => 'Special group was successfully created.') }
        format.xml  { render :xml => @special_group, :status => :created, :location => @special_group }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @special_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /special_groups/1
  # PUT /special_groups/1.xml
  def update
    @special_group = SpecialGroup.find(params[:id])

    respond_to do |format|
      if @special_group.update_attributes(params[:special_group])
        format.html { redirect_to(@special_group, :notice => 'Special group was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @special_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /special_groups/1
  # DELETE /special_groups/1.xml
  def destroy
    @special_group = SpecialGroup.find(params[:id])
    @special_group.destroy

    respond_to do |format|
      format.html { redirect_to(special_groups_url) }
      format.xml  { head :ok }
    end
  end
end

