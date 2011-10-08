class Lr13sController < ApplicationController
  # GET /lr13s
  # GET /lr13s.xml
  def index
    @lr13s = Lr13.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lr13s }
    end
  end

  # GET /lr13s/1
  # GET /lr13s/1.xml
  def show
    @lr13 = Lr13.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lr13 }
    end
  end

  # GET /lr13s/new
  # GET /lr13s/new.xml
  def new
    @lr13 = Lr13.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lr13 }
    end
  end

  # GET /lr13s/1/edit
  def edit
    @lr13 = Lr13.find(params[:id])
  end

  # POST /lr13s
  # POST /lr13s.xml
  def create
    @lr13 = Lr13.new(params[:lr13])

    respond_to do |format|
      if @lr13.save
        format.html { redirect_to(@lr13, :notice => 'Lr13 was successfully created.') }
        format.xml  { render :xml => @lr13, :status => :created, :location => @lr13 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lr13.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lr13s/1
  # PUT /lr13s/1.xml
  def update
    @lr13 = Lr13.find(params[:id])

    respond_to do |format|
      if @lr13.update_attributes(params[:lr13])
        format.html { redirect_to(@lr13, :notice => 'Lr13 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lr13.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lr13s/1
  # DELETE /lr13s/1.xml
  def destroy
    @lr13 = Lr13.find(params[:id])
    @lr13.destroy

    respond_to do |format|
      format.html { redirect_to(lr13s_url) }
      format.xml  { head :ok }
    end
  end
end
