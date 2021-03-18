class UserFriendsController < ApplicationController
 
  def index
  
  end
  
 def show

 end
  
  def create
      @user_friends = user_friends.create(params[:friend_id])

  end
    
  def friend_portfolio 
    @user_friends = Friendships.find(params[:friend_id])
    @user_friends_portfolio = user_friend.tracked_stocks
  
  end 

  def friendships
    @user_friend = user_friend.friendships
    @tracked_friends = UserFriendships.find(params[:friend_id])
  
  end

    
  def destroy

  end

end
