Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "coaches#index"
  # Routes for the Round resource:

  # CREATE
  get("/rounds/new", { :controller => "rounds", :action => "new_form" })
  post("/create_round", { :controller => "rounds", :action => "create_row" })
  post("/create_round_from_bout", { :controller => "rounds", :action => "create_row_from_bout" })
  post("/create_round_from_student", { :controller => "rounds", :action => "create_row_from_student" })
  post("/create_round_from_team", { :controller => "rounds", :action => "create_row_from_team" })

  # READ
  get("/rounds", { :controller => "rounds", :action => "index" })
  get("/rounds/:id_to_display", { :controller => "rounds", :action => "show" })

  # UPDATE
  get("/rounds/:prefill_with_id/edit", { :controller => "rounds", :action => "edit_form" })
  post("/update_round/:id_to_modify", { :controller => "rounds", :action => "update_row" })

  # DELETE
  get("/delete_round/:id_to_remove", { :controller => "rounds", :action => "destroy_row" })
  get("/delete_round_from_bout/:id_to_remove", { :controller => "rounds", :action => "destroy_row_from_bout" })
  get("/delete_round_from_student/:id_to_remove", { :controller => "rounds", :action => "destroy_row_from_student" })
  get("/delete_round_from_team/:id_to_remove", { :controller => "rounds", :action => "destroy_row_from_team" })

  #------------------------------

  # Routes for the Team assignment resource:

  # CREATE
  get("/team_assignments/new", { :controller => "team_assignments", :action => "new_form" })
  post("/create_team_assignment", { :controller => "team_assignments", :action => "create_row" })
  post("/create_team_assignment_from_bout", { :controller => "team_assignments", :action => "create_row_from_bout" })
  post("/create_team_assignment_from_team", { :controller => "team_assignments", :action => "create_row_from_team" })

  # READ
  get("/team_assignments", { :controller => "team_assignments", :action => "index" })
  get("/team_assignments/:id_to_display", { :controller => "team_assignments", :action => "show" })

  # UPDATE
  get("/team_assignments/:prefill_with_id/edit", { :controller => "team_assignments", :action => "edit_form" })
  post("/update_team_assignment/:id_to_modify", { :controller => "team_assignments", :action => "update_row" })

  # DELETE
  get("/delete_team_assignment/:id_to_remove", { :controller => "team_assignments", :action => "destroy_row" })
  get("/delete_team_assignment_from_bout/:id_to_remove", { :controller => "team_assignments", :action => "destroy_row_from_bout" })
  get("/delete_team_assignment_from_team/:id_to_remove", { :controller => "team_assignments", :action => "destroy_row_from_team" })

  #------------------------------

  # Routes for the Bout resource:

  # CREATE
  get("/bouts/new", { :controller => "bouts", :action => "new_form" })
  post("/create_bout", { :controller => "bouts", :action => "create_row" })
  post("/create_bout_from_level", { :controller => "bouts", :action => "create_row_from_level" })

  # READ
  get("/bouts", { :controller => "bouts", :action => "index" })
  get("/bouts/:id_to_display", { :controller => "bouts", :action => "show" })

  # UPDATE
  get("/bouts/:prefill_with_id/edit", { :controller => "bouts", :action => "edit_form" })
  post("/update_bout/:id_to_modify", { :controller => "bouts", :action => "update_row" })

  # DELETE
  get("/delete_bout/:id_to_remove", { :controller => "bouts", :action => "destroy_row" })
  get("/delete_bout_from_level/:id_to_remove", { :controller => "bouts", :action => "destroy_row_from_level" })

  #------------------------------

  # Routes for the Level resource:

  # CREATE
  get("/levels/new", { :controller => "levels", :action => "new_form" })
  post("/create_level", { :controller => "levels", :action => "create_row" })

  # READ
  get("/levels", { :controller => "levels", :action => "index" })
  get("/levels/:id_to_display", { :controller => "levels", :action => "show" })

  # UPDATE
  get("/levels/:prefill_with_id/edit", { :controller => "levels", :action => "edit_form" })
  post("/update_level/:id_to_modify", { :controller => "levels", :action => "update_row" })

  # DELETE
  get("/delete_level/:id_to_remove", { :controller => "levels", :action => "destroy_row" })

  #------------------------------

  # Routes for the Student resource:

  # CREATE
  get("/students/new", { :controller => "students", :action => "new_form" })
  post("/create_student", { :controller => "students", :action => "create_row" })
  post("/create_student_from_team", { :controller => "students", :action => "create_row_from_team" })

  # READ
  get("/students", { :controller => "students", :action => "index" })
  get("/students/:id_to_display", { :controller => "students", :action => "show" })

  # UPDATE
  get("/students/:prefill_with_id/edit", { :controller => "students", :action => "edit_form" })
  post("/update_student/:id_to_modify", { :controller => "students", :action => "update_row" })

  # DELETE
  get("/delete_student/:id_to_remove", { :controller => "students", :action => "destroy_row" })
  get("/delete_student_from_team/:id_to_remove", { :controller => "students", :action => "destroy_row_from_team" })

  #------------------------------

  # Routes for the Team resource:

  # CREATE
  get("/teams/new", { :controller => "teams", :action => "new_form" })
  post("/create_team", { :controller => "teams", :action => "create_row" })
  post("/create_team_from_coach", { :controller => "teams", :action => "create_row_from_coach" })

  # READ
  get("/teams", { :controller => "teams", :action => "index" })
  get("/teams/:id_to_display", { :controller => "teams", :action => "show" })

  # UPDATE
  get("/teams/:prefill_with_id/edit", { :controller => "teams", :action => "edit_form" })
  post("/update_team/:id_to_modify", { :controller => "teams", :action => "update_row" })

  # DELETE
  get("/delete_team/:id_to_remove", { :controller => "teams", :action => "destroy_row" })
  get("/delete_team_from_coach/:id_to_remove", { :controller => "teams", :action => "destroy_row_from_coach" })

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
