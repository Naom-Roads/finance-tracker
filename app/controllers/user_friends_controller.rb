class UserFriendsController < ApplicationController
 
  def index


    @user = current_user
    @tracked_friends = @user.friends

  end


#  def tracked_friends

  
#   @tracked_friends = user.friendships(params[:id]) 


#  end
  
#  def create
#   @friend = friendships.check_db(params[:email])
#   if friend.blank?
#     friend = friend.new_lookup(params[:email])
#     friend.save
#   end
#   @user_friends = Friendships.create(user: friend_id, email: email)
#   flash[:notice] = "#{friend.name} was successfully added to your list of friends"
#   redirect_to friend_portfolio_path
# end
    
  def friend_portfolio 
   
    @tracked_stocks = User.find(params[:id]).stocks

  end 

  # def friendships
  #   @my_friendships = 

  # end

    
#   def destroy

#   end

end
