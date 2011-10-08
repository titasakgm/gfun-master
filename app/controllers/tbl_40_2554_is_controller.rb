class Tbl402554IsController < ApplicationController
  # GET /tbl_40_2554_is
  # GET /tbl_40_2554_is.xml
  def index
    @tbl_40_2554_is = Tbl402554I.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tbl_40_2554_is }
    end
  end

  # GET /tbl_40_2554_is/1
  # GET /tbl_40_2554_is/1.xml
  def show
    @tbl_40_2554_i = Tbl402554I.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tbl_40_2554_i }
    end
  end

  # GET /tbl_40_2554_is/new
  # GET /tbl_40_2554_is/new.xml
  def new
    @tbl_40_2554_i = Tbl402554I.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tbl_40_2554_i }
    end
  end

  # GET /tbl_40_2554_is/1/edit
  def edit
    @tbl_40_2554_i = Tbl402554I.find(params[:id])
  end

  # POST /tbl_40_2554_is
  # POST /tbl_40_2554_is.xml
  def create
    @tbl_40_2554_i = Tbl402554I.new(params[:tbl_40_2554_i])

    respond_to do |format|
      if @tbl_40_2554_i.save
        format.html { redirect_to(@tbl_40_2554_i, :notice => 'Tbl 40 2554 i was successfully created.') }
        format.xml  { render :xml => @tbl_40_2554_i, :status => :created, :location => @tbl_40_2554_i }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tbl_40_2554_i.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tbl_40_2554_is/1
  # PUT /tbl_40_2554_is/1.xml
  def update
    @tbl_40_2554_i = Tbl402554I.find(params[:id])

    respond_to do |format|
      if @tbl_40_2554_i.update_attributes(params[:tbl_40_2554_i])
        format.html { redirect_to(@tbl_40_2554_i, :notice => 'Tbl 40 2554 i was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tbl_40_2554_i.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tbl_40_2554_is/1
  # DELETE /tbl_40_2554_is/1.xml
  def destroy
    @tbl_40_2554_i = Tbl402554I.find(params[:id])
    @tbl_40_2554_i.destroy

    respond_to do |format|
      format.html { redirect_to(tbl_40_2554_is_url) }
      format.xml  { head :ok }
    end
  end
end
