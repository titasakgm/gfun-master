class Lb202555sController < ApplicationController
  # GET /lb202555s
  # GET /lb202555s.xml
  def index
    @lb202555s = Lb202555.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lb202555s }
    end
  end

  # GET /lb202555s/1
  # GET /lb202555s/1.xml
  def show
    @lb202555 = Lb202555.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lb202555 }
    end
  end

  # GET /lb202555s/new
  # GET /lb202555s/new.xml
  def new
    @lb202555 = Lb202555.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lb202555 }
    end
  end

  # GET /lb202555s/1/edit
  def edit
    @lb202555 = Lb202555.find(params[:id])
  end

  # POST /lb202555s
  # POST /lb202555s.xml
  def create
    @lb202555 = Lb202555.new(params[:lb202555])

    respond_to do |format|
      if @lb202555.save
        format.html { redirect_to(@lb202555, :notice => 'Lb202555 was successfully created.') }
        format.xml  { render :xml => @lb202555, :status => :created, :location => @lb202555 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lb202555.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lb202555s/1
  # PUT /lb202555s/1.xml
  def update
    @lb202555 = Lb202555.find(params[:id])

    respond_to do |format|
      if @lb202555.update_attributes(params[:lb202555])
        format.html { redirect_to(@lb202555, :notice => 'Lb202555 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lb202555.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lb202555s/1
  # DELETE /lb202555s/1.xml
  def destroy
    @lb202555 = Lb202555.find(params[:id])
    @lb202555.destroy

    respond_to do |format|
      format.html { redirect_to(lb202555s_url) }
      format.xml  { head :ok }
    end
  end
end
