class StudentsController < ApplicationController

  def index
    students = if params[:name]
      Student.get_name_with_params(params[:name])
    else
      Student.all
    end
    render json: students
  end

  def student_by_id
    student = Student.find(params[:id])
    render json: student
  end

end
