class Method3sController < ApplicationController
  # GET /method3s
  # GET /method3s.xml
  def index
    @method3s = Method3.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @method3s }
    end
  end

  # GET /method3s/1
  # GET /method3s/1.xml
  def show
    @method3 = Method3.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @method3 }
    end
  end

  # GET /method3s/new
  # GET /method3s/new.xml
  def new
    @method3 = Method3.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @method3 }
    end
  end

  # GET /method3s/1/edit
  def edit
    @method3 = Method3.find(params[:id])
  end

  # POST /method3s
  # POST /method3s.xml
  def create
    @method3 = Method3.new(params[:method3])

    respond_to do |format|
      if @method3.save
        format.html { redirect_to(@method3, :notice => 'Method3 was successfully created.') }
        format.xml  { render :xml => @method3, :status => :created, :location => @method3 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @method3.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /method3s/1
  # PUT /method3s/1.xml
  def update
    @method3 = Method3.find(params[:id])

    respond_to do |format|
      if @method3.update_attributes(params[:method3])
        format.html { redirect_to(@method3, :notice => 'Method3 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @method3.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /method3s/1
  # DELETE /method3s/1.xml
  def destroy
    @method3 = Method3.find(params[:id])
    @method3.destroy

    respond_to do |format|
      format.html { redirect_to(method3s_url) }
      format.xml  { head :ok }
    end
  end
end
