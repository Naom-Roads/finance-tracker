class UsersController < ApplicationController
  
 
  
  def my_portfolio
    @user = current_user
    @tracked_stocks = current_user.stocks
  end

   def show
    @user = User.find(params[:id])
    @tracked_stocks = @user.stocks
  end 

  def my_friends
  
    @friends = current_user.friends

  end


  def friend_portfolio 
   
    @tracked_stocks = User.find(params[:id]).stocks

  end 

end



