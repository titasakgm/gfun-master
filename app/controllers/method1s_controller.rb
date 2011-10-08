class Method1sController < ApplicationController
  # GET /method1s
  # GET /method1s.xml
  def index
    @method1s = Method1.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @method1s }
    end
  end

  # GET /method1s/1
  # GET /method1s/1.xml
  def show
    @method1 = Method1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @method1 }
    end
  end

  # GET /method1s/new
  # GET /method1s/new.xml
  def new
    @method1 = Method1.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @method1 }
    end
  end

  # GET /method1s/1/edit
  def edit
    @method1 = Method1.find(params[:id])
  end

  # POST /method1s
  # POST /method1s.xml
  def create
    @method1 = Method1.new(params[:method1])

    respond_to do |format|
      if @method1.save
        format.html { redirect_to(@method1, :notice => 'Method1 was successfully created.') }
        format.xml  { render :xml => @method1, :status => :created, :location => @method1 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @method1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /method1s/1
  # PUT /method1s/1.xml
  def update
    @method1 = Method1.find(params[:id])

    respond_to do |format|
      if @method1.update_attributes(params[:method1])
        format.html { redirect_to(@method1, :notice => 'Method1 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @method1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /method1s/1
  # DELETE /method1s/1.xml
  def destroy
    @method1 = Method1.find(params[:id])
    @method1.destroy

    respond_to do |format|
      format.html { redirect_to(method1s_url) }
      format.xml  { head :ok }
    end
  end
end
