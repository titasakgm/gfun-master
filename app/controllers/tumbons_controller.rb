class TumbonsController < ApplicationController
  # GET /tumbons
  # GET /tumbons.xml
  def index
    @tumbons = Tumbon.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tumbons }
    end
  end

  # GET /tumbons/1
  # GET /tumbons/1.xml
  def show
    @tumbon = Tumbon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tumbon }
    end
  end

  # GET /tumbons/new
  # GET /tumbons/new.xml
  def new
    @tumbon = Tumbon.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tumbon }
    end
  end

  # GET /tumbons/1/edit
  def edit
    @tumbon = Tumbon.find(params[:id])
  end

  # POST /tumbons
  # POST /tumbons.xml
  def create
    @tumbon = Tumbon.new(params[:tumbon])

    respond_to do |format|
      if @tumbon.save
        format.html { redirect_to(@tumbon, :notice => 'Tumbon was successfully created.') }
        format.xml  { render :xml => @tumbon, :status => :created, :location => @tumbon }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tumbon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tumbons/1
  # PUT /tumbons/1.xml
  def update
    @tumbon = Tumbon.find(params[:id])

    respond_to do |format|
      if @tumbon.update_attributes(params[:tumbon])
        format.html { redirect_to(@tumbon, :notice => 'Tumbon was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tumbon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tumbons/1
  # DELETE /tumbons/1.xml
  def destroy
    @tumbon = Tumbon.find(params[:id])
    @tumbon.destroy

    respond_to do |format|
      format.html { redirect_to(tumbons_url) }
      format.xml  { head :ok }
    end
  end
end
