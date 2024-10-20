class Users::SessionsController < Devise::SessionsController
  def create
    super
    flash[:notice] = "Signed in successfully."
  end
  
  def destroy
    super
    flash[:notice] = "Signed out successfully."
  end
    
end
