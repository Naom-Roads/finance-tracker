class FriendsController < ApplicationController
  def my_friendships

    @tracked_friends = current_user.friends
    
    end

    

  def create

  end 

  def destroy

  end

end
