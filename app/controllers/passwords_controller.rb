class PasswordsController < ApplicationController
  before_action :require_login
  before_action :set_password, only: [ :edit, :update, :destroy ]

  def index
    @passwords = current_user.passwords
  end

  def edit
  end

  def update
    if @password.update(password_params)
      redirect_to passwords_path, notice: "Updated"
    else
      render :edit
    end
  end

  def destroy
    @password.destroy
    redirect_to passwords_path, notice: "Deleted"
  end

  def create
    @password = current_user.passwords.build(password_params)

    if @password.save
      redirect_to passwords_path, notice: "Password created"
    else
      render :index
    end
  end

  private

  def set_password
    @password = current_user.passwords.find(params[:id])
  end

  def password_params
    params.require(:password).permit(:app, :password)
  end
end
