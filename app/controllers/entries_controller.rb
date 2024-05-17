class EntriesController < ApplicationController

  def show

    @entry = Entry.find_by({"id" => params["id"]})
    @place = Place.find_by({"id" => @entry["place_id"]})

# render entries/show view with details about Entry
  end

  def new
    @place = Place.find_by({ "id" => params["place_id"] })
    # render entries/new view with new Entry form
  end

  def create 
#   # start with a new Entry
@entry = Entry.new
#   # assign user-entered form data to Entry's columns
@entry["title"] = params["title"]
@entry["description"] = params["description"]
@entry["posted_on"] = params["posted_on"]

  # assign relationship between Entry and Place
@entry["place_id"] = params["place_id"]

#   # save ENtry row
@entry.save
#   # redirect user
  redirect_to "/places/#{@entry["place_id"]}"

  end


end


