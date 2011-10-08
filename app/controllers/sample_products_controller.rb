class SampleProductsController < ApplicationController
  # GET /sample_products
  # GET /sample_products.xml
  def index
    @sample_products = SampleProduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sample_products }
    end
  end

  # GET /sample_products/1
  # GET /sample_products/1.xml
  def show
    @sample_product = SampleProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sample_product }
    end
  end

  # GET /sample_products/new
  # GET /sample_products/new.xml
  def new
    @sample_product = SampleProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sample_product }
    end
  end

  # GET /sample_products/1/edit
  def edit
    @sample_product = SampleProduct.find(params[:id])
  end

  # POST /sample_products
  # POST /sample_products.xml
  def create
    @sample_product = SampleProduct.new(params[:sample_product])

    respond_to do |format|
      if @sample_product.save
        format.html { redirect_to(@sample_product, :notice => 'Sample product was successfully created.') }
        format.xml  { render :xml => @sample_product, :status => :created, :location => @sample_product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sample_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sample_products/1
  # PUT /sample_products/1.xml
  def update
    @sample_product = SampleProduct.find(params[:id])

    respond_to do |format|
      if @sample_product.update_attributes(params[:sample_product])
        format.html { redirect_to(@sample_product, :notice => 'Sample product was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sample_product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sample_products/1
  # DELETE /sample_products/1.xml
  def destroy
    @sample_product = SampleProduct.find(params[:id])
    @sample_product.destroy

    respond_to do |format|
      format.html { redirect_to(sample_products_url) }
      format.xml  { head :ok }
    end
  end
end
