class StudentController < ApplicationController

  def index
    students = Student.all
    respond_to do |format|
      format.csv { send_data Student.to_csv students, options = {:col_sep => ";"} }
    end
  end

  def show
    response.headers["Access-Control-Allow-Origin"] = "*"
    student = Student.find(params[:id])
    render :json => user
  end

  def checkPassword
    response.headers["Access-Control-Allow-Origin"] = "*"
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
    response.headers["Access-Control-Allow-Origin"] = "*"
    student = Student.new
    student.email = params[:email]
    student.firstname = params[:firstname]
    student.lastname = params[:lastname]
    student.password = params[:password]
    student.save
    render :json => []
  end

  def contactAdd
    response.headers["Access-Control-Allow-Origin"] = "*"

    #params[:name]
    #params[:email]
    #params[:message]

    #titre KUIKUP - Message de "toto"
    # from {email}
    # to kuikup.caen@gmail.com
    puts "toto"
    puts "toto"
    puts "toto"
    puts "toto"
    puts "toto"
    puts "toto"
    puts "toto"
    puts "toto"
    puts "toto"
    puts "toto"
    puts "toto"
    puts "toto"
    puts "toto"
    puts "toto"
    puts "toto"


    UserMailer.send_notif("contact@samuel-berthe.fr").deliver



    render :json => []
  end

end
