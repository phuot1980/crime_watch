class UsersController < ApplicationController
	def index
		@users = User.all
  end

  def show
  	#puts params['id']
  	@user = User.find(params[:id])
  end

  def destroy
  	@user = User.find(params[:id])
  	@user.destroy 
  	redirect_to users_url
  end

  def new
  	@user = User.new	
  end

  def create
  	@user = User.new(user_params)
		if @user.save
			redirect_to users_path
		else
			#redisplay the form that is created. 
			render 'new'
		end
  end

  def edit
		#this action is responsible for retrieving a specific User from db
		@user = User.find(params[:id])
	end


	def update
		#this line of code retrieves a spefic bean from the DB
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			redirect_to users_path
		else
			render 'edit'
		end
	end

  #only accessible from the controller
	private

	def user_params
		params.require(:user).permit(:name, :email, :address, :city, :zip, :password, :password_confirmation)
	end

end
