class Lb202556sController < ApplicationController
  # GET /lb202556s
  # GET /lb202556s.xml
  def index
    @lb202556s = Lb202556.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lb202556s }
    end
  end

  # GET /lb202556s/1
  # GET /lb202556s/1.xml
  def show
    @lb202556 = Lb202556.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lb202556 }
    end
  end

  # GET /lb202556s/new
  # GET /lb202556s/new.xml
  def new
    @lb202556 = Lb202556.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lb202556 }
    end
  end

  # GET /lb202556s/1/edit
  def edit
    @lb202556 = Lb202556.find(params[:id])
  end

  # POST /lb202556s
  # POST /lb202556s.xml
  def create
    @lb202556 = Lb202556.new(params[:lb202556])

    respond_to do |format|
      if @lb202556.save
        format.html { redirect_to(@lb202556, :notice => 'Lb202556 was successfully created.') }
        format.xml  { render :xml => @lb202556, :status => :created, :location => @lb202556 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lb202556.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lb202556s/1
  # PUT /lb202556s/1.xml
  def update
    @lb202556 = Lb202556.find(params[:id])

    respond_to do |format|
      if @lb202556.update_attributes(params[:lb202556])
        format.html { redirect_to(@lb202556, :notice => 'Lb202556 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lb202556.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lb202556s/1
  # DELETE /lb202556s/1.xml
  def destroy
    @lb202556 = Lb202556.find(params[:id])
    @lb202556.destroy

    respond_to do |format|
      format.html { redirect_to(lb202556s_url) }
      format.xml  { head :ok }
    end
  end
end
