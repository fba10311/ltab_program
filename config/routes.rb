Rails.application.routes.draw do
  # Routes for the Student resource:

  # CREATE
  get("/students/new", { :controller => "students", :action => "new_form" })
  post("/create_student", { :controller => "students", :action => "create_row" })

  # READ
  get("/students", { :controller => "students", :action => "index" })
  get("/students/:id_to_display", { :controller => "students", :action => "show" })

  # UPDATE
  get("/students/:prefill_with_id/edit", { :controller => "students", :action => "edit_form" })
  post("/update_student/:id_to_modify", { :controller => "students", :action => "update_row" })

  # DELETE
  get("/delete_student/:id_to_remove", { :controller => "students", :action => "destroy_row" })

  #------------------------------

  # Routes for the Team resource:

  # CREATE
  get("/teams/new", { :controller => "teams", :action => "new_form" })
  post("/create_team", { :controller => "teams", :action => "create_row" })

  # READ
  get("/teams", { :controller => "teams", :action => "index" })
  get("/teams/:id_to_display", { :controller => "teams", :action => "show" })

  # UPDATE
  get("/teams/:prefill_with_id/edit", { :controller => "teams", :action => "edit_form" })
  post("/update_team/:id_to_modify", { :controller => "teams", :action => "update_row" })

  # DELETE
  get("/delete_team/:id_to_remove", { :controller => "teams", :action => "destroy_row" })

  #------------------------------

  # Routes for the Coach resource:

  # CREATE
  get("/coaches/new", { :controller => "coaches", :action => "new_form" })
  post("/create_coach", { :controller => "coaches", :action => "create_row" })

  # READ
  get("/coaches", { :controller => "coaches", :action => "index" })
  get("/coaches/:id_to_display", { :controller => "coaches", :action => "show" })

  # UPDATE
  get("/coaches/:prefill_with_id/edit", { :controller => "coaches", :action => "edit_form" })
  post("/update_coach/:id_to_modify", { :controller => "coaches", :action => "update_row" })

  # DELETE
  get("/delete_coach/:id_to_remove", { :controller => "coaches", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
