class Lr60sController < ApplicationController
  # GET /lr60s
  # GET /lr60s.xml
  def index
    @lr60s = current_user.lr60s

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lr60s }
    end
  end

  # GET /lr60s/1
  # GET /lr60s/1.xml
  def show
    @lr60 = Lr60.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lr60 }
    end
  end

  # GET /lr60s/new
  # GET /lr60s/new.xml
  def new
    @lr60 = Lr60.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lr60 }
    end
  end

  # GET /lr60s/1/edit
  def edit
    @lr60 = Lr60.find(params[:id])
  end

  # POST /lr60s
  # POST /lr60s.xml
  def create
    @lr60 = Lr60.new(params[:lr60])

    respond_to do |format|
      if @lr60.save
        format.html { redirect_to(@lr60, :notice => 'Lr60 was successfully created.') }
        format.xml  { render :xml => @lr60, :status => :created, :location => @lr60 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lr60.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lr60s/1
  # PUT /lr60s/1.xml
  def update
    @lr60 = Lr60.find(params[:id])

    respond_to do |format|
      if @lr60.update_attributes(params[:lr60])
        format.html { redirect_to(@lr60, :notice => 'Lr60 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lr60.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lr60s/1
  # DELETE /lr60s/1.xml
  def destroy
    @lr60 = Lr60.find(params[:id])
    @lr60.destroy

    respond_to do |format|
      format.html { redirect_to(lr60s_url) }
      format.xml  { head :ok }
    end
  end
end

