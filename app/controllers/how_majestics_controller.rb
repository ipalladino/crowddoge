class HowMajesticsController < ApplicationController
  before_filter :authenticate, :except => [:new, :create, :show]
  # GET /how_majestics
  # GET /how_majestics.json
  def index
    @how_majestics = HowMajestic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @how_majestics }
    end
  end

  # GET /how_majestics/1
  # GET /how_majestics/1.json
  def show
    @how_majestic = HowMajestic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @how_majestic }
    end
  end

  # GET /how_majestics/new
  # GET /how_majestics/new.json
  def new
    @how_majestics = HowMajestic.all
    @how_majestic = HowMajestic.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @how_majestic }
    end
  end

  # GET /how_majestics/1/edit
  def edit
    @how_majestic = HowMajestic.find(params[:id])
  end

  # POST /how_majestics
  # POST /how_majestics.json
  def create
    params[:how_majestic][:ip] = request.remote_ip
    @how_majestic = HowMajestic.new(params[:how_majestic])

    respond_to do |format|
      if @how_majestic.save
        format.html { redirect_to "/", notice: 'How majestic was successfully created.' }
        format.json { render json: @how_majestic, status: :created, location: @how_majestic }
      else
        format.html { render action: "new" }
        format.json { render json: @how_majestic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /how_majestics/1
  # PUT /how_majestics/1.json
  def update
    @how_majestic = HowMajestic.find(params[:id])

    respond_to do |format|
      if @how_majestic.update_attributes(params[:how_majestic])
        format.html { redirect_to @how_majestic, notice: 'How majestic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @how_majestic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /how_majestics/1
  # DELETE /how_majestics/1.json
  def destroy
    @how_majestic = HowMajestic.find(params[:id])
    @how_majestic.destroy

    respond_to do |format|
      format.html { redirect_to how_majestics_url }
      format.json { head :no_content }
    end
  end
end
