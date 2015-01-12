class UsersController < ApplicationController
	before_action :set_user, only: [:show, :destroy, :edit, :update]

	def index
		@users = User.all
  end

  def show
  end

  def destroy
  	@user.destroy 
  	redirect_to users_url
  end

  def new
  	@user = User.new
  	@submit_message = 'Sign Up'	
  end

  def create
  	@user = User.new(user_params)
		if @user.save
			redirect_to @user
		else
			#redisplay the form that is created. 
			render 'new'
		end
  end

  def edit
		@submit_message = 'Edit Account'
	end


	def update
		if @user.update_attributes!(user_params)
			redirect_to @user
		else
			render 'edit'
		end
	end

  #only accessible from the controller
	private

	def set_user
		@user = User.find(params[:id])
	end

	def user_params
		params.require(:user).permit(:name, :email, :address, :city, :zip, :password, :password_confirmation)
	end

end
