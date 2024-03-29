class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end


  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to(login_path)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @student = Student.new
    @students = Student.all
  end

  def edit
    @user = User.find(params[:id])
    render :new
  end
end