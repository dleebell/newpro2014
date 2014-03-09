class UsersController < ApplicationController
def show
	@User.find(params[:id])
end
  def new
  	@user = User.new
  def create 
  	@user = User.new(user_params) # Not the final implemention!
  	if @user.save
      redirect_to @user
  		#Handle a successful save
  	else
  		render 'new'
  	end
  end

  private

  def user_params 
  	params.require(:user).permit(:name, :email, :password,
  		:password_confirmation)
  end
end
