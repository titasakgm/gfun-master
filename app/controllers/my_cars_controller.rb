class MyCarsController < ApplicationController
  # GET /my_cars
  # GET /my_cars.xml
  def index
    @my_cars = MyCar.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @my_cars }
    end
  end

  # GET /my_cars/1
  # GET /my_cars/1.xml
  def show
    @my_car = MyCar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @my_car }
    end
  end

  # GET /my_cars/new
  # GET /my_cars/new.xml
  def new
    @my_car = MyCar.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @my_car }
    end
  end

  # GET /my_cars/1/edit
  def edit
    @my_car = MyCar.find(params[:id])
  end

  # POST /my_cars
  # POST /my_cars.xml
  def create
    @my_car = MyCar.new(params[:my_car])

    respond_to do |format|
      if @my_car.save
        format.html { redirect_to(@my_car, :notice => 'My car was successfully created.') }
        format.xml  { render :xml => @my_car, :status => :created, :location => @my_car }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @my_car.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /my_cars/1
  # PUT /my_cars/1.xml
  def update
    @my_car = MyCar.find(params[:id])

    respond_to do |format|
      if @my_car.update_attributes(params[:my_car])
        format.html { redirect_to(@my_car, :notice => 'My car was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @my_car.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /my_cars/1
  # DELETE /my_cars/1.xml
  def destroy
    @my_car = MyCar.find(params[:id])
    @my_car.destroy

    respond_to do |format|
      format.html { redirect_to(my_cars_url) }
      format.xml  { head :ok }
    end
  end
end
