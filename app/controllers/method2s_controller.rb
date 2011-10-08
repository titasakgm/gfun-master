class Method2sController < ApplicationController
  # GET /method2s
  # GET /method2s.xml
  def index
    @method2s = Method2.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @method2s }
    end
  end

  # GET /method2s/1
  # GET /method2s/1.xml
  def show
    @method2 = Method2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @method2 }
    end
  end

  # GET /method2s/new
  # GET /method2s/new.xml
  def new
    @method2 = Method2.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @method2 }
    end
  end

  # GET /method2s/1/edit
  def edit
    @method2 = Method2.find(params[:id])
  end

  # POST /method2s
  # POST /method2s.xml
  def create
    @method2 = Method2.new(params[:method2])

    respond_to do |format|
      if @method2.save
        format.html { redirect_to(@method2, :notice => 'Method2 was successfully created.') }
        format.xml  { render :xml => @method2, :status => :created, :location => @method2 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @method2.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /method2s/1
  # PUT /method2s/1.xml
  def update
    @method2 = Method2.find(params[:id])

    respond_to do |format|
      if @method2.update_attributes(params[:method2])
        format.html { redirect_to(@method2, :notice => 'Method2 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @method2.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /method2s/1
  # DELETE /method2s/1.xml
  def destroy
    @method2 = Method2.find(params[:id])
    @method2.destroy

    respond_to do |format|
      format.html { redirect_to(method2s_url) }
      format.xml  { head :ok }
    end
  end
end
