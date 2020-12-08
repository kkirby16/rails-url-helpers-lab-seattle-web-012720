class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
  end
end

def set_student
  @student = Student.find(params[:id])
  if @student.active == false
    @student.active = true
  elsif @student.active == true
    @student.active = false
    redirect_to "show"
  end
end
