class Lr70sController < ApplicationController
  # GET /lr70s
  # GET /lr70s.xml
  def index
    @lr70s = current_user.lr70s

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lr70s }
    end
  end

  # GET /lr70s/1
  # GET /lr70s/1.xml
  def show
    @lr70 = Lr70.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lr70 }
    end
  end

  # GET /lr70s/new
  # GET /lr70s/new.xml
  def new
    @lr70 = Lr70.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lr70 }
    end
  end

  # GET /lr70s/1/edit
  def edit
    @lr70 = Lr70.find(params[:id])
  end

  # POST /lr70s
  # POST /lr70s.xml
  def create
    @lr70 = Lr70.new(params[:lr70])

    respond_to do |format|
      if @lr70.save
        format.html { redirect_to(@lr70, :notice => 'Lr70 was successfully created.') }
        format.xml  { render :xml => @lr70, :status => :created, :location => @lr70 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lr70.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lr70s/1
  # PUT /lr70s/1.xml
  def update
    @lr70 = Lr70.find(params[:id])

    respond_to do |format|
      if @lr70.update_attributes(params[:lr70])
        format.html { redirect_to(@lr70, :notice => 'Lr70 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lr70.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lr70s/1
  # DELETE /lr70s/1.xml
  def destroy
    @lr70 = Lr70.find(params[:id])
    @lr70.destroy

    respond_to do |format|
      format.html { redirect_to(lr70s_url) }
      format.xml  { head :ok }
    end
  end
end

