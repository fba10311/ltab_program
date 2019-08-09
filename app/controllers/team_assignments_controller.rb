class TeamAssignmentsController < ApplicationController
  def index
    @team_assignments = TeamAssignment.all

    render("team_assignment_templates/index.html.erb")
  end

  def show
    @team_assignment = TeamAssignment.find(params.fetch("id_to_display"))

    render("team_assignment_templates/show.html.erb")
  end

  def new_form
    @team_assignment = TeamAssignment.new

    render("team_assignment_templates/new_form.html.erb")
  end

  def create_row
    @team_assignment = TeamAssignment.new

    @team_assignment.bout_id = params.fetch("bout_id")
    @team_assignment.team_id = params.fetch("team_id")

    if @team_assignment.valid?
      @team_assignment.save

      redirect_back(:fallback_location => "/team_assignments", :notice => "Team assignment created successfully.")
    else
      render("team_assignment_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @team_assignment = TeamAssignment.find(params.fetch("prefill_with_id"))

    render("team_assignment_templates/edit_form.html.erb")
  end

  def update_row
    @team_assignment = TeamAssignment.find(params.fetch("id_to_modify"))

    @team_assignment.bout_id = params.fetch("bout_id")
    @team_assignment.team_id = params.fetch("team_id")

    if @team_assignment.valid?
      @team_assignment.save

      redirect_to("/team_assignments/#{@team_assignment.id}", :notice => "Team assignment updated successfully.")
    else
      render("team_assignment_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_team
    @team_assignment = TeamAssignment.find(params.fetch("id_to_remove"))

    @team_assignment.destroy

    redirect_to("/teams/#{@team_assignment.team_id}", notice: "TeamAssignment deleted successfully.")
  end

  def destroy_row_from_bout
    @team_assignment = TeamAssignment.find(params.fetch("id_to_remove"))

    @team_assignment.destroy

    redirect_to("/bouts/#{@team_assignment.bout_id}", notice: "TeamAssignment deleted successfully.")
  end

  def destroy_row
    @team_assignment = TeamAssignment.find(params.fetch("id_to_remove"))

    @team_assignment.destroy

    redirect_to("/team_assignments", :notice => "Team assignment deleted successfully.")
  end
end
