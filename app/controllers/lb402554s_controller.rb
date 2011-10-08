class Lb402554sController < ApplicationController
  # GET /lb402554s
  # GET /lb402554s.xml
  def index
    @lb402554s = current_user.lb402554s

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lb402554s }
    end
  end

  # GET /lb402554s/1
  # GET /lb402554s/1.xml
  def show
    @lb402554 = Lb402554.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lb402554 }
    end
  end

  # GET /lb402554s/new
  # GET /lb402554s/new.xml
  def new
    @lb402554 = Lb402554.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lb402554 }
    end
  end

  # GET /lb402554s/1/edit
  def edit
    @lb402554 = Lb402554.find(params[:id])
  end

  # POST /lb402554s
  # POST /lb402554s.xml
  def create
    @lb402554 = Lb402554.new(params[:lb402554])

    respond_to do |format|
      if @lb402554.save
        format.html { redirect_to(@lb402554, :notice => 'Lb402554 was successfully created.') }
        format.xml  { render :xml => @lb402554, :status => :created, :location => @lb402554 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lb402554.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lb402554s/1
  # PUT /lb402554s/1.xml
  def update
    @lb402554 = Lb402554.find(params[:id])

    respond_to do |format|
      if @lb402554.update_attributes(params[:lb402554])
        format.html { redirect_to(@lb402554, :notice => 'Lb402554 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lb402554.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lb402554s/1
  # DELETE /lb402554s/1.xml
  def destroy
    @lb402554 = Lb402554.find(params[:id])
    @lb402554.destroy

    respond_to do |format|
      format.html { redirect_to(lb402554s_url) }
      format.xml  { head :ok }
    end
  end
end

