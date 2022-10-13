class StudentsController < ApplicationController

  def index
    students = Student.where(first_name: params[:name] || last_name: params[:name])
    # render json: students

    render json: students
  end

  def get_student
    student = Student.find_by_id(params[:id])
    render json: student
  end

end
