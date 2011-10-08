class Lr402sController < ApplicationController
  # GET /lr402s
  # GET /lr402s.xml
  def index
    @lr402s = current_user.lr402s

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lr402s }
    end
  end

  # GET /lr402s/1
  # GET /lr402s/1.xml
  def show
    @lr402 = Lr402.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lr402 }
    end
  end

  # GET /lr402s/new
  # GET /lr402s/new.xml
  def new
    @lr402 = Lr402.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lr402 }
    end
  end

  # GET /lr402s/1/edit
  def edit
    @lr402 = Lr402.find(params[:id])
  end

  # POST /lr402s
  # POST /lr402s.xml
  def create
    @lr402 = Lr402.new(params[:lr402])

    respond_to do |format|
      if @lr402.save
        format.html { redirect_to(@lr402, :notice => 'Lr402 was successfully created.') }
        format.xml  { render :xml => @lr402, :status => :created, :location => @lr402 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lr402.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lr402s/1
  # PUT /lr402s/1.xml
  def update
    @lr402 = Lr402.find(params[:id])

    respond_to do |format|
      if @lr402.update_attributes(params[:lr402])
        format.html { redirect_to(@lr402, :notice => 'Lr402 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lr402.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lr402s/1
  # DELETE /lr402s/1.xml
  def destroy
    @lr402 = Lr402.find(params[:id])
    @lr402.destroy

    respond_to do |format|
      format.html { redirect_to(lr402s_url) }
      format.xml  { head :ok }
    end
  end
end

