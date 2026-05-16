class PlacesController < ApplicationController

  # GET /places — show the list of all places
  def index
    @list_of_places = Place.all
    render({ :template => "places/index" })
  end

  # GET /places/:id — show the details of one specific place
  def show
    the_id = params.fetch("id")
    @the_place = Place.where({ :id => the_id }).first
    render({ :template => "places/show" })
  end

  # GET /places/new — show the form to add a new place
  def new
    render({ :template => "places/new" })
  end

  # POST /places — handle the form submission and create a new place
  def create
    the_place = Place.new
    the_place.name = params.fetch("query_name")
    the_place.save

    # redirect back to the list of places after saving
    redirect_to("/places")
  end

end