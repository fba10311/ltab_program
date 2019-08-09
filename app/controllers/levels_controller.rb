class LevelsController < ApplicationController
  def index
    @levels = Level.all

    render("level_templates/index.html.erb")
  end

  def show
    @bout = Bout.new
    @level = Level.find(params.fetch("id_to_display"))

    render("level_templates/show.html.erb")
  end

  def new_form
    @level = Level.new

    render("level_templates/new_form.html.erb")
  end

  def create_row
    @level = Level.new

    @level.stage = params.fetch("stage")

    if @level.valid?
      @level.save

      redirect_back(:fallback_location => "/levels", :notice => "Level created successfully.")
    else
      render("level_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @level = Level.find(params.fetch("prefill_with_id"))

    render("level_templates/edit_form.html.erb")
  end

  def update_row
    @level = Level.find(params.fetch("id_to_modify"))

    @level.stage = params.fetch("stage")

    if @level.valid?
      @level.save

      redirect_to("/levels/#{@level.id}", :notice => "Level updated successfully.")
    else
      render("level_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @level = Level.find(params.fetch("id_to_remove"))

    @level.destroy

    redirect_to("/levels", :notice => "Level deleted successfully.")
  end
end
