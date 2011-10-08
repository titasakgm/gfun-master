class Lr50sController < ApplicationController
  # GET /lr50s
  # GET /lr50s.xml
  def index
    @lr50s = current_user.lr50s

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lr50s }
    end
  end

  # GET /lr50s/1
  # GET /lr50s/1.xml
  def show
    @lr50 = Lr50.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lr50 }
    end
  end

  # GET /lr50s/new
  # GET /lr50s/new.xml
  def new
    @lr50 = Lr50.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lr50 }
    end
  end

  # GET /lr50s/1/edit
  def edit
    @lr50 = Lr50.find(params[:id])
  end

  # POST /lr50s
  # POST /lr50s.xml
  def create
    @lr50 = Lr50.new(params[:lr50])

    respond_to do |format|
      if @lr50.save
        format.html { redirect_to(@lr50, :notice => 'Lr50 was successfully created.') }
        format.xml  { render :xml => @lr50, :status => :created, :location => @lr50 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lr50.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lr50s/1
  # PUT /lr50s/1.xml
  def update
    @lr50 = Lr50.find(params[:id])

    respond_to do |format|
      if @lr50.update_attributes(params[:lr50])
        format.html { redirect_to(@lr50, :notice => 'Lr50 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lr50.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lr50s/1
  # DELETE /lr50s/1.xml
  def destroy
    @lr50 = Lr50.find(params[:id])
    @lr50.destroy

    respond_to do |format|
      format.html { redirect_to(lr50s_url) }
      format.xml  { head :ok }
    end
  end
end

