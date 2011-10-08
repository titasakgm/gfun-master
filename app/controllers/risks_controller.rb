class RisksController < ApplicationController
  # GET /risks
  # GET /risks.xml
  def index
    @user = current_user
    @risks = Risk.where(["risk_lacode=?", "#{@user.ladmin_id}"])
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @risks }
    end
  end

  # GET /risks/1
  # GET /risks/1.xml
  def show
    @risk = Risk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @risk }
    end
  end

  # GET /risks/new
  # GET /risks/new.xml
  def new
    @risk = Risk.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @risk }
    end
  end

  # GET /risks/1/edit
  def edit
    @risk = Risk.find(params[:id])
  end

  # POST /risks
  # POST /risks.xml
  def create
    @risk = Risk.new(params[:risk])

    respond_to do |format|
      if @risk.save
        format.html { redirect_to(@risk, :notice => 'Risk was successfully created.') }
        format.xml  { render :xml => @risk, :status => :created, :location => @risk }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @risk.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /risks/1
  # PUT /risks/1.xml
  def update
    @risk = Risk.find(params[:id])

    respond_to do |format|
      if @risk.update_attributes(params[:risk])
        format.html { redirect_to(@risk, :notice => 'Risk was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @risk.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /risks/1
  # DELETE /risks/1.xml
  def destroy
    @risk = Risk.find(params[:id])
    @risk.destroy

    respond_to do |format|
      format.html { redirect_to(risks_url) }
      format.xml  { head :ok }
    end
  end
end
