class Lr602555sController < ApplicationController
  # GET /lr602555s
  # GET /lr602555s.xml
  def index
    @lr602555s = current_user.lr602555s

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lr602555s }
    end
  end

  # GET /lr602555s/1
  # GET /lr602555s/1.xml
  def show
    @lr602555 = Lr602555.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lr602555 }
    end
  end

  # GET /lr602555s/new
  # GET /lr602555s/new.xml
  def new
    @lr602555 = Lr602555.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lr602555 }
    end
  end

  # GET /lr602555s/1/edit
  def edit
    @lr602555 = Lr602555.find(params[:id])
  end

  # POST /lr602555s
  # POST /lr602555s.xml
  def create
    @lr602555 = Lr602555.new(params[:lr602555])

    respond_to do |format|
      if @lr602555.save
        format.html { redirect_to(@lr602555, :notice => 'Lr602555 was successfully created.') }
        format.xml  { render :xml => @lr602555, :status => :created, :location => @lr602555 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lr602555.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lr602555s/1
  # PUT /lr602555s/1.xml
  def update
    @lr602555 = Lr602555.find(params[:id])

    respond_to do |format|
      if @lr602555.update_attributes(params[:lr602555])
        format.html { redirect_to(@lr602555, :notice => 'Lr602555 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lr602555.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lr602555s/1
  # DELETE /lr602555s/1.xml
  def destroy
    @lr602555 = Lr602555.find(params[:id])
    @lr602555.destroy

    respond_to do |format|
      format.html { redirect_to(lr602555s_url) }
      format.xml  { head :ok }
    end
  end
end

