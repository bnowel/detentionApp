class ConsequencesController < ApplicationController
  # GET /consequences
  # GET /consequences.json
  def index
    @consequences = Consequence.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @consequences }
    end
  end

  # GET /consequences/1
  # GET /consequences/1.json
  def show
    @consequence = Consequence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @consequence }
    end
  end

  # GET /consequences/new
  # GET /consequences/new.json
  def new
    @consequence = Consequence.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @consequence }
    end
  end

  # GET /consequences/1/edit
  def edit
    @consequence = Consequence.find(params[:id])
  end

  # POST /consequences
  # POST /consequences.json
  def create
    @consequence = Consequence.new(params[:consequence])

    respond_to do |format|
      if @consequence.save
        format.html { redirect_to @consequence, :notice => 'Consequence was successfully created.' }
        format.json { render :json => @consequence, :status => :created, :location => @consequence }
      else
        format.html { render :action => "new" }
        format.json { render :json => @consequence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /consequences/1
  # PUT /consequences/1.json
  def update
    @consequence = Consequence.find(params[:id])

    respond_to do |format|
      if @consequence.update_attributes(params[:consequence])
        format.html { redirect_to @consequence, :notice => 'Consequence was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @consequence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /consequences/1
  # DELETE /consequences/1.json
  def destroy
    @consequence = Consequence.find(params[:id])
    @consequence.destroy

    respond_to do |format|
      format.html { redirect_to consequences_url }
      format.json { head :ok }
    end
  end
end
