class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @appointments = Appointment.where(poster_id: params[:id]).or(Appointment.where(respondent_id: params[:id]))
  end

  def destroy
  end

  def update
  end

  def edit
  end
end
