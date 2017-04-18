require 'active_support'

class SessionsController < ApplicationController
  protect_from_forgery with: :null_session

  def create_new_user
    User.create(:name => params[:name], :friends => 0, :numpics => 0, :password => params[:password], :listoffriends => [])

    render json: {}.to_json, :content_type => 'application/json'
  end

  def get_user
    render json: {User: User.find(params[:id])}.to_json, :content_type => 'application/json'
  end

  def destroy_user
    user = User.find(params[:id])
    user.destroy

    render json: {Size: User.count}.to_json, :content_type => 'application/json'
  end

  def update_name
    user = User.find(params[:id])
    user.name = params[:new_name]
    user.save

    render json: {Name: user.name}.to_json, :content_type => 'application/json'
  end

  def add_friend
    user = User.find(params[:user_id])
    user.friends = user.friends + 1
    user.listoffriends << params[:friend_id].to_s

    user.save

    render json: {FriendIds: user.listoffriends}.to_json, :content_type => 'application/json'
  end
end


#session_id = params[:id]

#puts session_id

#User.create(:name => "Bob")

#@name = User.get_name(1)
#puts @name

#render json: {User: User.find(1)}.to_json, :content_type => 'application/json'