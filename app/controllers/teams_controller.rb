class TeamsController < ApplicationController
  def index
    @q = Team.ransack(params[:q])
    @teams = @q.result(:distinct => true).includes(:coach, :students, :team_assignments, :rounds, :bouts).page(params[:page]).per(10)

    render("team_templates/index.html.erb")
  end

  def show
    @round = Round.new
    @team_assignment = TeamAssignment.new
    @student = Student.new
    @team = Team.find(params.fetch("id_to_display"))

    render("team_templates/show.html.erb")
  end

  def new_form
    @team = Team.new

    render("team_templates/new_form.html.erb")
  end

  def create_row
    @team = Team.new

    @team.school_name = params.fetch("school_name")
    @team.school_address = params.fetch("school_address")
    @team.coach_id = params.fetch("coach_id")

    if @team.valid?
      @team.save

      redirect_back(:fallback_location => "/teams", :notice => "Team created successfully.")
    else
      render("team_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_coach
    @team = Team.new

    @team.school_name = params.fetch("school_name")
    @team.school_address = params.fetch("school_address")
    @team.coach_id = params.fetch("coach_id")

    if @team.valid?
      @team.save

      redirect_to("/coaches/#{@team.coach_id}", notice: "Team created successfully.")
    else
      render("team_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @team = Team.find(params.fetch("prefill_with_id"))

    render("team_templates/edit_form.html.erb")
  end

  def update_row
    @team = Team.find(params.fetch("id_to_modify"))

    @team.school_name = params.fetch("school_name")
    @team.school_address = params.fetch("school_address")
    @team.coach_id = params.fetch("coach_id")

    if @team.valid?
      @team.save

      redirect_to("/teams/#{@team.id}", :notice => "Team updated successfully.")
    else
      render("team_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_coach
    @team = Team.find(params.fetch("id_to_remove"))

    @team.destroy

    redirect_to("/coaches/#{@team.coach_id}", notice: "Team deleted successfully.")
  end

  def destroy_row
    @team = Team.find(params.fetch("id_to_remove"))

    @team.destroy

    redirect_to("/teams", :notice => "Team deleted successfully.")
  end
end
