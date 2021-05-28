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
    
    @friend = User.find(params[:id])
    @tracked_stocks = @friend.stocks

  end 

  def search

    if params[:friend].present?
      @friend = Friendship.new_lookup(params[:friend])
      if @friend
        respond_to do |format|
          format.js { render partial: 'friends/result' }
        end
      else
        respond_to do |format|
            flash.now[:alert] = 'Please enter a valid email to search'
            format.js { render partial: 'friends/result' }
        end 
      end
    else
        respond_to do |format|
            flash.now[:alert] = 'Please enter an email'
            format.js { render partial: 'friends/result' }
        end
    end
  end
end 





