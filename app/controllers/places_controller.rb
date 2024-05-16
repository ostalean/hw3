class PlacesController < ApplicationController

  def index
    # find all Places rows
    @places = Place.all
    # render places/index view
  end

  def show
# find a Company
params["id"]
@places = Place.find_by({"id" => params["id"]})
# render places/show view with details about Company


  end

  def new

  end

  def create 
#   # start with a new Place
@places = Place.new
#   # assign user-entered form data to Place's columns
@places["name"] = params["name"]

#   # save Place row
@places.save
#   # redirect user
  redirect_to "/places"


  end


end
