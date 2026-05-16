class EntriesController < ApplicationController

  # GET /places/:place_id/entries/new — show the form to add a new entry for a place
  def new
    @the_place_id = params.fetch("place_id")
    render({ :template => "entries/new" })
  end

  # POST /entries — handle the form submission and create a new entry
  def create
    the_entry = Entry.new
    the_entry.title = params.fetch("query_title")
    the_entry.description = params.fetch("query_description")
    the_entry.occurred_on = params.fetch("query_occurred_on")
    the_entry.place_id = params.fetch("query_place_id")
    the_entry.save

    # redirect back to the place's show page after saving
    redirect_to("/places/#{the_entry.place_id}")
  end

end