class Lb202554sController < ApplicationController
  # GET /lb202554s
  # GET /lb202554s.xml
  def index
    @lb202554s = Lb202554.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lb202554s }
    end
  end

  # GET /lb202554s/1
  # GET /lb202554s/1.xml
  def show
    @lb202554 = Lb202554.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lb202554 }
    end
  end

  # GET /lb202554s/new
  # GET /lb202554s/new.xml
  def new
    @lb202554 = Lb202554.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lb202554 }
    end
  end

  # GET /lb202554s/1/edit
  def edit
    @lb202554 = Lb202554.find(params[:id])
  end

  # POST /lb202554s
  # POST /lb202554s.xml
  def create
    @lb202554 = Lb202554.new(params[:lb202554])

    respond_to do |format|
      if @lb202554.save
        format.html { redirect_to(@lb202554, :notice => 'Lb202554 was successfully created.') }
        format.xml  { render :xml => @lb202554, :status => :created, :location => @lb202554 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lb202554.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lb202554s/1
  # PUT /lb202554s/1.xml
  def update
    @lb202554 = Lb202554.find(params[:id])

    respond_to do |format|
      if @lb202554.update_attributes(params[:lb202554])
        format.html { redirect_to(@lb202554, :notice => 'Lb202554 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lb202554.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lb202554s/1
  # DELETE /lb202554s/1.xml
  def destroy
    @lb202554 = Lb202554.find(params[:id])
    @lb202554.destroy

    respond_to do |format|
      format.html { redirect_to(lb202554s_url) }
      format.xml  { head :ok }
    end
  end
end
