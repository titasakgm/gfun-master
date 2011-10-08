class Lr20sController < ApplicationController
  # GET /lr20s
  # GET /lr20s.xml
  def index
    @lr20s = current_user.lr20s

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lr20s }
    end
  end

  # GET /lr20s/1
  # GET /lr20s/1.xml
  def show
    @lr20 = Lr20.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lr20 }
    end
  end

  # GET /lr20s/new
  # GET /lr20s/new.xml
  def new
    @lr20 = Lr20.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lr20 }
    end
  end

  # GET /lr20s/1/edit
  def edit
    @lr20 = Lr20.find(params[:id])
  end

  # POST /lr20s
  # POST /lr20s.xml
  def create
    @lr20 = Lr20.new(params[:lr20])

    respond_to do |format|
      if @lr20.save
        format.html { redirect_to(@lr20, :notice => 'Lr20 was successfully created.') }
        format.xml  { render :xml => @lr20, :status => :created, :location => @lr20 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lr20.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lr20s/1
  # PUT /lr20s/1.xml
  def update
    @lr20 = Lr20.find(params[:id])

    respond_to do |format|
      if @lr20.update_attributes(params[:lr20])
        format.html { redirect_to(@lr20, :notice => 'Lr20 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lr20.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lr20s/1
  # DELETE /lr20s/1.xml
  def destroy
    @lr20 = Lr20.find(params[:id])
    @lr20.destroy

    respond_to do |format|
      format.html { redirect_to(lr20s_url) }
      format.xml  { head :ok }
    end
  end
end

