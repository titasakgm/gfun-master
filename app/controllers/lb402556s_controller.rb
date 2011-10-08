class Lb402556sController < ApplicationController
  # GET /lb402556s
  # GET /lb402556s.xml
  def index
    @lb402556s = current_user.lb402556s

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lb402556s }
    end
  end

  # GET /lb402556s/1
  # GET /lb402556s/1.xml
  def show
    @lb402556 = Lb402556.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lb402556 }
    end
  end

  # GET /lb402556s/new
  # GET /lb402556s/new.xml
  def new
    @lb402556 = Lb402556.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lb402556 }
    end
  end

  # GET /lb402556s/1/edit
  def edit
    @lb402556 = Lb402556.find(params[:id])
  end

  # POST /lb402556s
  # POST /lb402556s.xml
  def create
    @lb402556 = Lb402556.new(params[:lb402556])

    respond_to do |format|
      if @lb402556.save
        format.html { redirect_to(@lb402556, :notice => 'Lb402556 was successfully created.') }
        format.xml  { render :xml => @lb402556, :status => :created, :location => @lb402556 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lb402556.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lb402556s/1
  # PUT /lb402556s/1.xml
  def update
    @lb402556 = Lb402556.find(params[:id])

    respond_to do |format|
      if @lb402556.update_attributes(params[:lb402556])
        format.html { redirect_to(@lb402556, :notice => 'Lb402556 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lb402556.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lb402556s/1
  # DELETE /lb402556s/1.xml
  def destroy
    @lb402556 = Lb402556.find(params[:id])
    @lb402556.destroy

    respond_to do |format|
      format.html { redirect_to(lb402556s_url) }
      format.xml  { head :ok }
    end
  end
end

