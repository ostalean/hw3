class EntriesController < ApplicationController


  def show
# find a Place
params["id"]
@entry = Entry.find_by({"id" => params["id"]})
# render places/show view with details about Place
  end

  def new

  end

  def create 
#   # start with a new Place
@entry = Entry.new
#   # assign user-entered form data to Place's columns
@entry["title"] = params["tile"]
@entry["description"] = params["description"]
@entry["posted_on"] = params["posted_on"]

#   # save Place row
@entry.save
#   # redirect user
  redirect_to "/places/#{@entry["place_id"]}"

  end


end


