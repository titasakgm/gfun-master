class Lr12sController < ApplicationController
  # GET /lr12s
  # GET /lr12s.xml
  def index
    @lr12s = Lr12.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lr12s }
    end
  end

  # GET /lr12s/1
  # GET /lr12s/1.xml
  def show
    @lr12 = Lr12.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lr12 }
    end
  end

  # GET /lr12s/new
  # GET /lr12s/new.xml
  def new
    @lr12 = Lr12.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lr12 }
    end
  end

  # GET /lr12s/1/edit
  def edit
    @lr12 = Lr12.find(params[:id])
  end

  # POST /lr12s
  # POST /lr12s.xml
  def create
    @lr12 = Lr12.new(params[:lr12])

    respond_to do |format|
      if @lr12.save
        format.html { redirect_to(@lr12, :notice => 'Lr12 was successfully created.') }
        format.xml  { render :xml => @lr12, :status => :created, :location => @lr12 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lr12.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lr12s/1
  # PUT /lr12s/1.xml
  def update
    @lr12 = Lr12.find(params[:id])

    respond_to do |format|
      if @lr12.update_attributes(params[:lr12])
        format.html { redirect_to(@lr12, :notice => 'Lr12 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lr12.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lr12s/1
  # DELETE /lr12s/1.xml
  def destroy
    @lr12 = Lr12.find(params[:id])
    @lr12.destroy

    respond_to do |format|
      format.html { redirect_to(lr12s_url) }
      format.xml  { head :ok }
    end
  end
end
