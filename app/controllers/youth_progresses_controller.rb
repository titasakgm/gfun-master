class YouthProgressesController < ApplicationController
  # GET /youth_progresses
  # GET /youth_progresses.xml
  def index
    @youth_progresses = YouthProgress.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @youth_progresses }
    end
  end

  # GET /youth_progresses/1
  # GET /youth_progresses/1.xml
  def show
    @youth_progress = YouthProgress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @youth_progress }
    end
  end

  # GET /youth_progresses/new
  # GET /youth_progresses/new.xml
  def new
    @youth_progress = YouthProgress.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @youth_progress }
    end
  end

  # GET /youth_progresses/1/edit
  def edit
    @youth_progress = YouthProgress.find(params[:id])
  end

  # POST /youth_progresses
  # POST /youth_progresses.xml
  def create
    @youth_progress = YouthProgress.new(params[:youth_progress])

    respond_to do |format|
      if @youth_progress.save
        format.html { redirect_to(@youth_progress, :notice => 'Youth progress was successfully created.') }
        format.xml  { render :xml => @youth_progress, :status => :created, :location => @youth_progress }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @youth_progress.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /youth_progresses/1
  # PUT /youth_progresses/1.xml
  def update
    @youth_progress = YouthProgress.find(params[:id])

    respond_to do |format|
      if @youth_progress.update_attributes(params[:youth_progress])
        format.html { redirect_to(@youth_progress, :notice => 'Youth progress was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @youth_progress.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /youth_progresses/1
  # DELETE /youth_progresses/1.xml
  def destroy
    @youth_progress = YouthProgress.find(params[:id])
    @youth_progress.destroy

    respond_to do |format|
      format.html { redirect_to(youth_progresses_url) }
      format.xml  { head :ok }
    end
  end
end
