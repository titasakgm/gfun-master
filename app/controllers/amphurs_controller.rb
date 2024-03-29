class AmphursController < ApplicationController
  # GET /amphurs
  # GET /amphurs.xml
  def index
    unless params[:province_id].nil?
      puts "has province_id"
      @amphurs = Province.find(params[:province_id]).amphurs
    else
      @amphurs = Amphur.all
    end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @amphurs }
      format.js
    end
  end

  # GET /amphurs/1
  # GET /amphurs/1.xml
  def show
    @amphur = Amphur.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @amphur }
    end
  end

  # GET /amphurs/new
  # GET /amphurs/new.xml
  def new
    @amphur = Amphur.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @amphur }
    end
  end

  # GET /amphurs/1/edit
  def edit
    @amphur = Amphur.find(params[:id])
  end

  # POST /amphurs
  # POST /amphurs.xml
  def create
    @amphur = Amphur.new(params[:amphur])

    respond_to do |format|
      if @amphur.save
        format.html { redirect_to(@amphur, :notice => 'Amphur was successfully created.') }
        format.xml  { render :xml => @amphur, :status => :created, :location => @amphur }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @amphur.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /amphurs/1
  # PUT /amphurs/1.xml
  def update
    @amphur = Amphur.find(params[:id])

    respond_to do |format|
      if @amphur.update_attributes(params[:amphur])
        format.html { redirect_to(@amphur, :notice => 'Amphur was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @amphur.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /amphurs/1
  # DELETE /amphurs/1.xml
  def destroy
    @amphur = Amphur.find(params[:id])
    @amphur.destroy

    respond_to do |format|
      format.html { redirect_to(amphurs_url) }
      format.xml  { head :ok }
    end
  end
end

