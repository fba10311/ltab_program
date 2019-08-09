class StudentsController < ApplicationController
  def index
    @q = Student.ransack(params[:q])
    @students = @q.result(:distinct => true).includes(:team, :rounds).page(params[:page]).per(10)

    render("student_templates/index.html.erb")
  end

  def show
    @round = Round.new
    @student = Student.find(params.fetch("id_to_display"))

    render("student_templates/show.html.erb")
  end

  def new_form
    @student = Student.new

    render("student_templates/new_form.html.erb")
  end

  def create_row
    @student = Student.new

    @student.first_name = params.fetch("first_name")
    @student.last_name = params.fetch("last_name")
    @student.team_id = params.fetch("team_id")

    if @student.valid?
      @student.save

      redirect_back(:fallback_location => "/students", :notice => "Student created successfully.")
    else
      render("student_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_team
    @student = Student.new

    @student.first_name = params.fetch("first_name")
    @student.last_name = params.fetch("last_name")
    @student.team_id = params.fetch("team_id")

    if @student.valid?
      @student.save

      redirect_to("/teams/#{@student.team_id}", notice: "Student created successfully.")
    else
      render("student_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @student = Student.find(params.fetch("prefill_with_id"))

    render("student_templates/edit_form.html.erb")
  end

  def update_row
    @student = Student.find(params.fetch("id_to_modify"))

    @student.first_name = params.fetch("first_name")
    @student.last_name = params.fetch("last_name")
    @student.team_id = params.fetch("team_id")

    if @student.valid?
      @student.save

      redirect_to("/students/#{@student.id}", :notice => "Student updated successfully.")
    else
      render("student_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_team
    @student = Student.find(params.fetch("id_to_remove"))

    @student.destroy

    redirect_to("/teams/#{@student.team_id}", notice: "Student deleted successfully.")
  end

  def destroy_row
    @student = Student.find(params.fetch("id_to_remove"))

    @student.destroy

    redirect_to("/students", :notice => "Student deleted successfully.")
  end
end
