Rails.application.routes.draw do
  # Root route — landing page shows the list of places
  get("/", { :controller => "places", :action => "index" })

  # ===== Routes for Places =====
  get("/places", { :controller => "places", :action => "index" })
  get("/places/new", { :controller => "places", :action => "new" })
  post("/places", { :controller => "places", :action => "create" })
  get("/places/:id", { :controller => "places", :action => "show" })

  # ===== Routes for Entries =====
  get("/places/:place_id/entries/new", { :controller => "entries", :action => "new" })
  post("/entries", { :controller => "entries", :action => "create" })
end