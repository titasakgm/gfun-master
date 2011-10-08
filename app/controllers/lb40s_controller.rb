class Lb40sController < ApplicationController
  # GET /lb40s
  # GET /lb40s.xml
  def index
    @lb40s = current_user.lb40s

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lb40s }
    end
  end

  # GET /lb40s/1
  # GET /lb40s/1.xml
  def show
    @lb40 = Lb40.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lb40 }
    end
  end

  # GET /lb40s/new
  # GET /lb40s/new.xml
  def new
    @lb40 = Lb40.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lb40 }
    end
  end

  # GET /lb40s/1/edit
  def edit
    @lb40 = Lb40.find(params[:id])
  end

  # POST /lb40s
  # POST /lb40s.xml
  def create
    @lb40 = Lb40.new(params[:lb40])

    respond_to do |format|
      if @lb40.save
        format.html { redirect_to(@lb40, :notice => 'Lb40 was successfully created.') }
        format.xml  { render :xml => @lb40, :status => :created, :location => @lb40 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lb40.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lb40s/1
  # PUT /lb40s/1.xml
  def update
    @lb40 = Lb40.find(params[:id])

    respond_to do |format|
      if @lb40.update_attributes(params[:lb40])
        format.html { redirect_to(@lb40, :notice => 'Lb40 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lb40.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lb40s/1
  # DELETE /lb40s/1.xml
  def destroy
    @lb40 = Lb40.find(params[:id])
    @lb40.destroy

    respond_to do |format|
      format.html { redirect_to(lb40s_url) }
      format.xml  { head :ok }
    end
  end
end

