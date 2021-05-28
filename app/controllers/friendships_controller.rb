class FriendshipsController < ApplicationController
  def create

    

  end

  def destroy
    friendship = current_user.friendships.where(friend_id: params[:id]).first
    friendship.destroy
    flash[:notice] = "Stopped Folowing"
    redirect_to my_friends_path
  end

end
