class DwReport1sController < ApplicationController
  # GET /dw_report1s
  # GET /dw_report1s.xml
  def index
    @dw_report1s = DwReport1.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dw_report1s }
    end
  end

  # GET /dw_report1s/1
  # GET /dw_report1s/1.xml
  def show
    @dw_report1 = DwReport1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dw_report1 }
    end
  end

  # GET /dw_report1s/new
  # GET /dw_report1s/new.xml
  def new
    @dw_report1 = DwReport1.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dw_report1 }
    end
  end

  # GET /dw_report1s/1/edit
  def edit
    @dw_report1 = DwReport1.find(params[:id])
  end

  # POST /dw_report1s
  # POST /dw_report1s.xml
  def create
    @dw_report1 = DwReport1.new(params[:dw_report1])

    respond_to do |format|
      if @dw_report1.save
        format.html { redirect_to(@dw_report1, :notice => 'Dw report1 was successfully created.') }
        format.xml  { render :xml => @dw_report1, :status => :created, :location => @dw_report1 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dw_report1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dw_report1s/1
  # PUT /dw_report1s/1.xml
  def update
    @dw_report1 = DwReport1.find(params[:id])

    respond_to do |format|
      if @dw_report1.update_attributes(params[:dw_report1])
        format.html { redirect_to(@dw_report1, :notice => 'Dw report1 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dw_report1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dw_report1s/1
  # DELETE /dw_report1s/1.xml
  def destroy
    @dw_report1 = DwReport1.find(params[:id])
    @dw_report1.destroy

    respond_to do |format|
      format.html { redirect_to(dw_report1s_url) }
      format.xml  { head :ok }
    end
  end
end
