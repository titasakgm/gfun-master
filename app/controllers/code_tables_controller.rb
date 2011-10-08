class CodeTablesController < ApplicationController
  # GET /code_tables
  # GET /code_tables.xml
  def index
    @code_tables = CodeTable.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @code_tables }
    end
  end

  # GET /code_tables/1
  # GET /code_tables/1.xml
  def show
    @code_table = CodeTable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @code_table }
    end
  end

  # GET /code_tables/new
  # GET /code_tables/new.xml
  def new
    @code_table = CodeTable.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @code_table }
    end
  end

  # GET /code_tables/1/edit
  def edit
    @code_table = CodeTable.find(params[:id])
  end

  # POST /code_tables
  # POST /code_tables.xml
  def create
    @code_table = CodeTable.new(params[:code_table])

    respond_to do |format|
      if @code_table.save
        format.html { redirect_to(@code_table, :notice => 'Code table was successfully created.') }
        format.xml  { render :xml => @code_table, :status => :created, :location => @code_table }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @code_table.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /code_tables/1
  # PUT /code_tables/1.xml
  def update
    @code_table = CodeTable.find(params[:id])

    respond_to do |format|
      if @code_table.update_attributes(params[:code_table])
        format.html { redirect_to(@code_table, :notice => 'Code table was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @code_table.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /code_tables/1
  # DELETE /code_tables/1.xml
  def destroy
    @code_table = CodeTable.find(params[:id])
    @code_table.destroy

    respond_to do |format|
      format.html { redirect_to(code_tables_url) }
      format.xml  { head :ok }
    end
  end
end
