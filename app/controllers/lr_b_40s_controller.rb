class LrB40sController < ApplicationController
  # GET /lr_b_40s
  # GET /lr_b_40s.xml
  def index
    @lr_b_40s = LrB40.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lr_b_40s }
    end
  end

  # GET /lr_b_40s/1
  # GET /lr_b_40s/1.xml
  def show
    @lr_b_40 = LrB40.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lr_b_40 }
    end
  end

  # GET /lr_b_40s/new
  # GET /lr_b_40s/new.xml
  def new
    @lr_b_40 = LrB40.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lr_b_40 }
    end
  end

  # GET /lr_b_40s/1/edit
  def edit
    @lr_b_40 = LrB40.find(params[:id])
  end

  # POST /lr_b_40s
  # POST /lr_b_40s.xml
  def create
    @lr_b_40 = LrB40.new(params[:lr_b_40])

    respond_to do |format|
      if @lr_b_40.save
        format.html { redirect_to(@lr_b_40, :notice => 'Lr b 40 was successfully created.') }
        format.xml  { render :xml => @lr_b_40, :status => :created, :location => @lr_b_40 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lr_b_40.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lr_b_40s/1
  # PUT /lr_b_40s/1.xml
  def update
    @lr_b_40 = LrB40.find(params[:id])

    respond_to do |format|
      if @lr_b_40.update_attributes(params[:lr_b_40])
        format.html { redirect_to(@lr_b_40, :notice => 'Lr b 40 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lr_b_40.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lr_b_40s/1
  # DELETE /lr_b_40s/1.xml
  def destroy
    @lr_b_40 = LrB40.find(params[:id])
    @lr_b_40.destroy

    respond_to do |format|
      format.html { redirect_to(lr_b_40s_url) }
      format.xml  { head :ok }
    end
  end
end
