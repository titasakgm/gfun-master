class Lr14sController < ApplicationController
  # GET /lr14s
  # GET /lr14s.xml
  def index
    @lr14s = current_user.lr14s

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lr14s }
    end
  end

  # GET /lr14s/1
  # GET /lr14s/1.xml
  def show
    @lr14 = Lr14.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lr14 }
    end
  end

  # GET /lr14s/new
  # GET /lr14s/new.xml
  def new
    @lr14 = Lr14.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lr14 }
    end
  end

  # GET /lr14s/1/edit
  def edit
    @lr14 = Lr14.find(params[:id])
  end

  # POST /lr14s
  # POST /lr14s.xml
  def create
    @lr14 = Lr14.new(params[:lr14])

    respond_to do |format|
      if @lr14.save
        format.html { redirect_to(@lr14, :notice => 'Lr14 was successfully created.') }
        format.xml  { render :xml => @lr14, :status => :created, :location => @lr14 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lr14.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lr14s/1
  # PUT /lr14s/1.xml
  def update
    @lr14 = Lr14.find(params[:id])

    respond_to do |format|
      if @lr14.update_attributes(params[:lr14])
        format.html { redirect_to(@lr14, :notice => 'Lr14 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lr14.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lr14s/1
  # DELETE /lr14s/1.xml
  def destroy
    @lr14 = Lr14.find(params[:id])
    @lr14.destroy

    respond_to do |format|
      format.html { redirect_to(lr14s_url) }
      format.xml  { head :ok }
    end
  end
end

