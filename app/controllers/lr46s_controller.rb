class Lr46sController < ApplicationController
  # GET /lr46s
  # GET /lr46s.xml
  def index
    @lr46s = current_user.lr46s

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lr46s }
    end
  end

  # GET /lr46s/1
  # GET /lr46s/1.xml
  def show
    @lr46 = Lr46.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lr46 }
    end
  end

  # GET /lr46s/new
  # GET /lr46s/new.xml
  def new
    @lr46 = Lr46.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lr46 }
    end
  end

  # GET /lr46s/1/edit
  def edit
    @lr46 = Lr46.find(params[:id])
  end

  # POST /lr46s
  # POST /lr46s.xml
  def create
    @lr46 = Lr46.new(params[:lr46])

    respond_to do |format|
      if @lr46.save
        format.html { redirect_to(@lr46, :notice => 'Lr46 was successfully created.') }
        format.xml  { render :xml => @lr46, :status => :created, :location => @lr46 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lr46.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lr46s/1
  # PUT /lr46s/1.xml
  def update
    @lr46 = Lr46.find(params[:id])

    respond_to do |format|
      if @lr46.update_attributes(params[:lr46])
        format.html { redirect_to(@lr46, :notice => 'Lr46 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lr46.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lr46s/1
  # DELETE /lr46s/1.xml
  def destroy
    @lr46 = Lr46.find(params[:id])
    @lr46.destroy

    respond_to do |format|
      format.html { redirect_to(lr46s_url) }
      format.xml  { head :ok }
    end
  end
end

