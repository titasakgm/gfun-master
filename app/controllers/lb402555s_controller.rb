class Lb402555sController < ApplicationController
  # GET /lb402555s
  # GET /lb402555s.xml
  def index
    @lb402555s = current_user.lb402555s

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lb402555s }
    end
  end

  # GET /lb402555s/1
  # GET /lb402555s/1.xml
  def show
    @lb402555 = Lb402555.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lb402555 }
    end
  end

  # GET /lb402555s/new
  # GET /lb402555s/new.xml
  def new
    @lb402555 = Lb402555.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lb402555 }
    end
  end

  # GET /lb402555s/1/edit
  def edit
    @lb402555 = Lb402555.find(params[:id])
  end

  # POST /lb402555s
  # POST /lb402555s.xml
  def create
    @lb402555 = Lb402555.new(params[:lb402555])

    respond_to do |format|
      if @lb402555.save
        format.html { redirect_to(@lb402555, :notice => 'Lb402555 was successfully created.') }
        format.xml  { render :xml => @lb402555, :status => :created, :location => @lb402555 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lb402555.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lb402555s/1
  # PUT /lb402555s/1.xml
  def update
    @lb402555 = Lb402555.find(params[:id])

    respond_to do |format|
      if @lb402555.update_attributes(params[:lb402555])
        format.html { redirect_to(@lb402555, :notice => 'Lb402555 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lb402555.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lb402555s/1
  # DELETE /lb402555s/1.xml
  def destroy
    @lb402555 = Lb402555.find(params[:id])
    @lb402555.destroy

    respond_to do |format|
      format.html { redirect_to(lb402555s_url) }
      format.xml  { head :ok }
    end
  end
end

