class SessionsController < ApplicationController
  def create
  end

  def authenticated
    @user = current_user # Adjust if `current_user` is defined differently
    render :authenticated
  end

  def destroy
  end
  
end
