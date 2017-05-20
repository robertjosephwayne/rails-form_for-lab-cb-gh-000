class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end
end