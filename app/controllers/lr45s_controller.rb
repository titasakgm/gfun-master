class Lr45sController < ApplicationController
  # GET /lr45s
  # GET /lr45s.xml
  def index
    @lr45s = current_user.lr45s

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lr45s }
    end
  end

  # GET /lr45s/1
  # GET /lr45s/1.xml
  def show
    @lr45 = Lr45.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lr45 }
    end
  end

  # GET /lr45s/new
  # GET /lr45s/new.xml
  def new
    @lr45 = Lr45.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lr45 }
    end
  end

  # GET /lr45s/1/edit
  def edit
    @lr45 = Lr45.find(params[:id])
  end

  # POST /lr45s
  # POST /lr45s.xml
  def create
    @lr45 = Lr45.new(params[:lr45])

    respond_to do |format|
      if @lr45.save
        format.html { redirect_to(@lr45, :notice => 'Lr45 was successfully created.') }
        format.xml  { render :xml => @lr45, :status => :created, :location => @lr45 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lr45.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lr45s/1
  # PUT /lr45s/1.xml
  def update
    @lr45 = Lr45.find(params[:id])

    respond_to do |format|
      if @lr45.update_attributes(params[:lr45])
        format.html { redirect_to(@lr45, :notice => 'Lr45 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lr45.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lr45s/1
  # DELETE /lr45s/1.xml
  def destroy
    @lr45 = Lr45.find(params[:id])
    @lr45.destroy

    respond_to do |format|
      format.html { redirect_to(lr45s_url) }
      format.xml  { head :ok }
    end
  end
end

