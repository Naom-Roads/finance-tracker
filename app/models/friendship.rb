class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User'

  # validates :name, :email, presence: true

  # def self.new_lookup(friend_email)
  #   new(name: friend_name, email: friend_email, friend_id: friend.id)
  # rescue StandardError => e
  #   nil
  # end
end
