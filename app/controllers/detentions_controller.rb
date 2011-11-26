class DetentionsController < ApplicationController
  # GET /detentions
  # GET /detentions.json
  def index
    @detentions = Detention.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @detentions }
    end
  end

  # GET /detentions/1
  # GET /detentions/1.json
  def show
    @detention = Detention.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @detention }
    end
  end

  # GET /detentions/new
  # GET /detentions/new.json
  def new
    @detention = Detention.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @detention }
    end
  end

  # GET /detentions/1/edit
  def edit
    @detention = Detention.find(params[:id])
  end

  # POST /detentions
  # POST /detentions.json
  def create
    @detention = Detention.new(params[:detention])

    respond_to do |format|
      if @detention.save
        format.html { redirect_to @detention, :notice => 'Detention was successfully created.' }
        format.json { render :json => @detention, :status => :created, :location => @detention }
      else
        format.html { render :action => "new" }
        format.json { render :json => @detention.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /detentions/1
  # PUT /detentions/1.json
  def update
    @detention = Detention.find(params[:id])

    respond_to do |format|
      if @detention.update_attributes(params[:detention])
        format.html { redirect_to @detention, :notice => 'Detention was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @detention.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /detentions/1
  # DELETE /detentions/1.json
  def destroy
    @detention = Detention.find(params[:id])
    @detention.destroy

    respond_to do |format|
      format.html { redirect_to detentions_url }
      format.json { head :ok }
    end
  end
end
