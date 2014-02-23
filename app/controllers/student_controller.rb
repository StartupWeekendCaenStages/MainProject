class StudentController < ApplicationController

  def index
    students = Student.all
    render :json => students
  end

  def show
    student = Student.find(params[:id])
    render :json => user
  end

  def checkPassword
    q1 = "#{params[:email]}"
    q2 = "#{params[:password]}"
    student = Student.where("email = ? AND password = ?", q1, q2)
    if student.length == 1
      render :json => {login:"ok"}
    else
      render :json => {login:"ko"}
    end
  end

  def create
    student = Student.new
    student.email = params[:email]
    student.firstname = params[:firstname]
    student.lastname = params[:lastname]
    student.password = params[:password]
    student.save
    render :json => []
  end

  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end

end
