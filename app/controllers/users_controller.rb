class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @appointments = Appointment.all
  end

  def destroy
  end

  def update
  end

  def edit
  end
end
