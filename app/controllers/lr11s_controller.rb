class Lr11sController < ApplicationController
  # GET /lr11s
  # GET /lr11s.xml
  def index
    @lr11s = Lr11.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lr11s }
    end
  end

  # GET /lr11s/1
  # GET /lr11s/1.xml
  def show
    @lr11 = Lr11.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lr11 }
    end
  end

  # GET /lr11s/new
  # GET /lr11s/new.xml
  def new
    @lr11 = Lr11.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lr11 }
    end
  end

  # GET /lr11s/1/edit
  def edit
    @lr11 = Lr11.find(params[:id])
  end

  # POST /lr11s
  # POST /lr11s.xml
  def create
    @lr11 = Lr11.new(params[:lr11])

    respond_to do |format|
      if @lr11.save
        format.html { redirect_to(@lr11, :notice => 'Lr11 was successfully created.') }
        format.xml  { render :xml => @lr11, :status => :created, :location => @lr11 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lr11.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lr11s/1
  # PUT /lr11s/1.xml
  def update
    @lr11 = Lr11.find(params[:id])

    respond_to do |format|
      if @lr11.update_attributes(params[:lr11])
        format.html { redirect_to(@lr11, :notice => 'Lr11 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lr11.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lr11s/1
  # DELETE /lr11s/1.xml
  def destroy
    @lr11 = Lr11.find(params[:id])
    @lr11.destroy

    respond_to do |format|
      format.html { redirect_to(lr11s_url) }
      format.xml  { head :ok }
    end
  end
end
