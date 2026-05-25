class PasswordsController < ApplicationController
  def index
    @passwords = Password.all
  end
end
