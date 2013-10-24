class IncidentsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @student = Student.find(params[:student_id])
    @incidents = Incident.where(:student_id => @student.id)
  end

  def new
    incident = Incident.new
  end

  def create
    @user = User.find(params[:user_id])
    @student = Student.find(params[:student_id])
    @incident = Incident.new(params[:incident])
    @infraction = Infraction.new(params[:infraction])

#this goes to the show and helps to print out what you want to see form the database.
    if @incident.save
      redirect_to [@user, @student, @incident]
    else
      @users = User.all
      render :new
    end
  end

  def show
    @user = User.find(params[:user_id])
    @student = Student.find(params[:student_id])
    @incident = Incident.find(params[:id])
    @connectors = Connector.all
  end

end

