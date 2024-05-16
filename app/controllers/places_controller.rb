class PlacesController < ApplicationController

  def index
    # find all Places rows
    @places = Place.all
    # render places/index view
  end

end
