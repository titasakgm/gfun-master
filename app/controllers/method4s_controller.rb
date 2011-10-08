class Method4sController < ApplicationController
  # GET /method4s
  # GET /method4s.xml
  def index
    @method4s = Method4.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @method4s }
    end
  end

  # GET /method4s/1
  # GET /method4s/1.xml
  def show
    @method4 = Method4.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @method4 }
    end
  end

  # GET /method4s/new
  # GET /method4s/new.xml
  def new
    @method4 = Method4.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @method4 }
    end
  end

  # GET /method4s/1/edit
  def edit
    @method4 = Method4.find(params[:id])
  end

  # POST /method4s
  # POST /method4s.xml
  def create
    @method4 = Method4.new(params[:method4])

    respond_to do |format|
      if @method4.save
        format.html { redirect_to(@method4, :notice => 'Method4 was successfully created.') }
        format.xml  { render :xml => @method4, :status => :created, :location => @method4 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @method4.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /method4s/1
  # PUT /method4s/1.xml
  def update
    @method4 = Method4.find(params[:id])

    respond_to do |format|
      if @method4.update_attributes(params[:method4])
        format.html { redirect_to(@method4, :notice => 'Method4 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @method4.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /method4s/1
  # DELETE /method4s/1.xml
  def destroy
    @method4 = Method4.find(params[:id])
    @method4.destroy

    respond_to do |format|
      format.html { redirect_to(method4s_url) }
      format.xml  { head :ok }
    end
  end
end
