class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id]) # User.find(1)
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		flash[:success] = "Welcome to the Sample App!"
		# handle a successful save
		redirect_to @user
	else 
		render 'new'
	end	
  end
end
