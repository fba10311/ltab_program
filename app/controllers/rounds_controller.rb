class RoundsController < ApplicationController
  def index
    @rounds = Round.all

    render("round_templates/index.html.erb")
  end

  def show
    @round = Round.find(params.fetch("id_to_display"))

    render("round_templates/show.html.erb")
  end

  def new_form
    @round = Round.new

    render("round_templates/new_form.html.erb")
  end

  def create_row
    @round = Round.new

    @round.bout_id = params.fetch("bout_id")
    @round.team_id = params.fetch("team_id")
    @round.student_id = params.fetch("student_id")
    @round.time = params.fetch("time")
    @round.score_1 = params.fetch("score_1")
    @round.score_2 = params.fetch("score_2")
    @round.score_3 = params.fetch("score_3")
    @round.score_4 = params.fetch("score_4")
    @round.score_5 = params.fetch("score_5")

    if @round.valid?
      @round.save

      redirect_back(:fallback_location => "/rounds", :notice => "Round created successfully.")
    else
      render("round_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @round = Round.find(params.fetch("prefill_with_id"))

    render("round_templates/edit_form.html.erb")
  end

  def update_row
    @round = Round.find(params.fetch("id_to_modify"))

    @round.bout_id = params.fetch("bout_id")
    @round.team_id = params.fetch("team_id")
    @round.student_id = params.fetch("student_id")
    @round.time = params.fetch("time")
    @round.score_1 = params.fetch("score_1")
    @round.score_2 = params.fetch("score_2")
    @round.score_3 = params.fetch("score_3")
    @round.score_4 = params.fetch("score_4")
    @round.score_5 = params.fetch("score_5")

    if @round.valid?
      @round.save

      redirect_to("/rounds/#{@round.id}", :notice => "Round updated successfully.")
    else
      render("round_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @round = Round.find(params.fetch("id_to_remove"))

    @round.destroy

    redirect_to("/rounds", :notice => "Round deleted successfully.")
  end
end
