class LadminsController < ApplicationController
  # GET /ladmins
  # GET /ladmins.xml
  def index
    unless params[:amphur_id].nil?
      #puts "has province_id"
      @ladmins = Amphur.find(params[:amphur_id]).ladmins
    else
      @ladmins = Ladmin.all
    end


    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ladmins }
      format.js
    end
  end

  # GET /ladmins/1
  # GET /ladmins/1.xml
  def show
    @ladmin = Ladmin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ladmin }
    end
  end

  # GET /ladmins/new
  # GET /ladmins/new.xml
  def new
    @ladmin = Ladmin.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ladmin }
    end
  end

  # GET /ladmins/1/edit
  def edit
    @ladmin = Ladmin.find(params[:id])
  end

  # POST /ladmins
  # POST /ladmins.xml
  def create
    @ladmin = Ladmin.new(params[:ladmin])

    respond_to do |format|
      if @ladmin.save
        format.html { redirect_to(@ladmin, :notice => 'Ladmin was successfully created.') }
        format.xml  { render :xml => @ladmin, :status => :created, :location => @ladmin }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ladmin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ladmins/1
  # PUT /ladmins/1.xml
  def update
    @ladmin = Ladmin.find(params[:id])

    respond_to do |format|
      if @ladmin.update_attributes(params[:ladmin])
        format.html { redirect_to(@ladmin, :notice => 'Ladmin was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ladmin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ladmins/1
  # DELETE /ladmins/1.xml
  def destroy
    @ladmin = Ladmin.find(params[:id])
    @ladmin.destroy

    respond_to do |format|
      format.html { redirect_to(ladmins_url) }
      format.xml  { head :ok }
    end
  end
end

