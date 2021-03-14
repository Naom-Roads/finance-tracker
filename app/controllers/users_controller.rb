class UsersController < ApplicationController
  
 
  
  def my_portfolio
    @user = current_user
    @tracked_stocks = current_user.stocks
  end

   def show
    @user = User.find(params[:id])
    @tracked_stocks = @user.stocks
  end 

  def friend_portfolio 
    @friend = Friendships.find(params[:friend_id])
    @friend_portfolio = @friend.stocks
    

  end 

  


end



