class ProgressesController < ApplicationController
  respond_to :js, :html
  # GET /progresses
  # GET /progresses.xml

  def index
    @progresses = Progress.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @progresses }
    end
  end

  # GET /progresses/1
  # GET /progresses/1.xml
  def show
    @progress = Progress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @progress }
    end
  end

  # GET /progresses/new
  # GET /progresses/new.xml
  def new
    @progress = Progress.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @progress }
    end
  end

  # GET /progresses/1/edit
  def edit
    p = ProjectsStaff.find(params[:projects_staff_id])
    @progress = p.progress
    @staff_title = p.staff.title
    @id = @progress.class.name + "_"+ @progress.id.to_s
    respond_with @progress
  end

  # POST /progresses
  # POST /progresses.xml
  def create
    @progress = Progress.new(params[:progress])

    respond_to do |format|
      if @progress.save
        format.html { redirect_to(@progress, :notice => 'Progress was successfully created.') }
        format.xml  { render :xml => @progress, :status => :created, :location => @progress }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @progress.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /progresses/1
  # PUT /progresses/1.xml
  def update
    @progress = Progress.find(params[:id])

    respond_to do |format|
      if @progress.update_attributes(params[:progress])
        format.js { render :inline => "$('##{params[:dialog_id]}').dialog('close')" }
        format.html { redirect_to(@progress, :notice => 'Progress was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @progress.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /progresses/1
  # DELETE /progresses/1.xml
  def destroy
    @progress = Progress.find(params[:id])
    @progress.destroy

    respond_to do |format|
      format.html { redirect_to(progresses_url) }
      format.xml  { head :ok }
    end
  end
end

