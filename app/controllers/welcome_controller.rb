class WelcomeController < ApplicationController
  def index
    if !current_user
      redirect_to new_user_registration_path
    else
      return
    end
  end
end
