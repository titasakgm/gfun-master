class Lr65sController < ApplicationController
  # GET /lr65s
  # GET /lr65s.xml
  def index
    @lr65s = current_user.lr65s

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lr65s }
    end
  end

  # GET /lr65s/1
  # GET /lr65s/1.xml
  def show
    @lr65 = Lr65.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lr65 }
    end
  end

  # GET /lr65s/new
  # GET /lr65s/new.xml
  def new
    @lr65 = Lr65.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lr65 }
    end
  end

  # GET /lr65s/1/edit
  def edit
    @lr65 = Lr65.find(params[:id])
  end

  # POST /lr65s
  # POST /lr65s.xml
  def create
    @lr65 = Lr65.new(params[:lr65])

    respond_to do |format|
      if @lr65.save
        format.html { redirect_to(@lr65, :notice => 'Lr65 was successfully created.') }
        format.xml  { render :xml => @lr65, :status => :created, :location => @lr65 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lr65.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lr65s/1
  # PUT /lr65s/1.xml
  def update
    @lr65 = Lr65.find(params[:id])

    respond_to do |format|
      if @lr65.update_attributes(params[:lr65])
        format.html { redirect_to(@lr65, :notice => 'Lr65 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lr65.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lr65s/1
  # DELETE /lr65s/1.xml
  def destroy
    @lr65 = Lr65.find(params[:id])
    @lr65.destroy

    respond_to do |format|
      format.html { redirect_to(lr65s_url) }
      format.xml  { head :ok }
    end
  end
end

