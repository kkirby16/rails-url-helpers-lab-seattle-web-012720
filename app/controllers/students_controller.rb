require "pry"

class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def set_student
    @student = Student.find(params[:id])
    if @student.active == false
      @student.active = true
      @student.save
    elsif @student.active == true
      @student.active = false
      @student.save
    end
    redirect_to student_path(@student)
  end
end
