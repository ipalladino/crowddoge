class PagesController < ApplicationController
  # GET /how_majestics
  # GET /how_majestics.json
  def index
    @how_majestics = HowMajestic.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  def api
  end
end
