class BoutsController < ApplicationController
  def index
    @bouts = Bout.all

    render("bout_templates/index.html.erb")
  end

  def show
    @round = Round.new
    @team_assignment = TeamAssignment.new
    @bout = Bout.find(params.fetch("id_to_display"))

    render("bout_templates/show.html.erb")
  end

  def new_form
    @bout = Bout.new

    render("bout_templates/new_form.html.erb")
  end

  def create_row
    @bout = Bout.new

    @bout.level_id = params.fetch("level_id")

    if @bout.valid?
      @bout.save

      redirect_back(:fallback_location => "/bouts", :notice => "Bout created successfully.")
    else
      render("bout_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_level
    @bout = Bout.new

    @bout.level_id = params.fetch("level_id")

    if @bout.valid?
      @bout.save

      redirect_to("/levels/#{@bout.level_id}", notice: "Bout created successfully.")
    else
      render("bout_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @bout = Bout.find(params.fetch("prefill_with_id"))

    render("bout_templates/edit_form.html.erb")
  end

  def update_row
    @bout = Bout.find(params.fetch("id_to_modify"))

    @bout.level_id = params.fetch("level_id")

    if @bout.valid?
      @bout.save

      redirect_to("/bouts/#{@bout.id}", :notice => "Bout updated successfully.")
    else
      render("bout_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_level
    @bout = Bout.find(params.fetch("id_to_remove"))

    @bout.destroy

    redirect_to("/levels/#{@bout.level_id}", notice: "Bout deleted successfully.")
  end

  def destroy_row
    @bout = Bout.find(params.fetch("id_to_remove"))

    @bout.destroy

    redirect_to("/bouts", :notice => "Bout deleted successfully.")
  end
end
