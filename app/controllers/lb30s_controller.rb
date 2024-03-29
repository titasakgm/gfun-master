class Lb30sController < ApplicationController
  # GET /lb30s
  # GET /lb30s.xml
  def index
    @lb30s = current_user.lb30s

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lb30s }
    end
  end

  # GET /lb30s/1
  # GET /lb30s/1.xml
  def show
    @lb30 = Lb30.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lb30 }
    end
  end

  # GET /lb30s/new
  # GET /lb30s/new.xml
  def new
    @lb30 = Lb30.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lb30 }
    end
  end

  # GET /lb30s/1/edit
  def edit
    @lb30 = Lb30.find(params[:id])
  end

  # POST /lb30s
  # POST /lb30s.xml
  def create
    @lb30 = Lb30.new(params[:lb30])

    respond_to do |format|
      if @lb30.save
        format.html { redirect_to(@lb30, :notice => 'Lb30 was successfully created.') }
        format.xml  { render :xml => @lb30, :status => :created, :location => @lb30 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lb30.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lb30s/1
  # PUT /lb30s/1.xml
  def update
    @lb30 = Lb30.find(params[:id])

    respond_to do |format|
      if @lb30.update_attributes(params[:lb30])
        format.html { redirect_to(@lb30, :notice => 'Lb30 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lb30.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lb30s/1
  # DELETE /lb30s/1.xml
  def destroy
    @lb30 = Lb30.find(params[:id])
    @lb30.destroy

    respond_to do |format|
      format.html { redirect_to(lb30s_url) }
      format.xml  { head :ok }
    end
  end
end

