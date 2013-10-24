class InfractionsController < ApplicationController
  def index
    @infractions = Infraction.all
  end

  def new
    @user = User.find params[:user_id]
    @student = Student.find params[:student_id]
    @infraction = Infraction.new
  end

  def create
    student = Student.find(params[:student_id])
    infraction = Infraction.new(params[:infraction])
    if infraction.save
      redirect_to(user_student_infractions_path(@user, student))
    else
      @users = User.all
      render :new
    end
  end

end
