class WelcomeController < ApplicationController
  before_action :login_check, only: [:new, :edit, :destroy]

  def index
  end

  private
  def login_check
    if (session[:user_id] == nil)
      redirect_to root_path
    end
  end
end
