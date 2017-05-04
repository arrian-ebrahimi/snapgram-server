require 'active_support'

class SessionsController < ApplicationController
  protect_from_forgery with: :null_session

  def create_new_user
    User.create(:name => params[:name], :friends => 0, :numpics => 0, :password => params[:password], :listoffriends => [])

    render json: {}.to_json, :content_type => 'application/json'
  end

  def get_id_by_name
    puts "fedfssedf"
    puts params[:name]
    puts "--------"
    
    @id = 0
    @user = User.all

    @user.each do | user |
      if user.name == params[:name]
        @id = user.id
      end
    end

    render json: {Id: @id}.to_json, :content_type => 'application/json'
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

    checkExisting = user.listoffriends.find(params[:friend_id])

    if checkExisting == nil
      user.friends = user.friends + 1
      user.listoffriends << params[:friend_id].to_s

      user.save

      render json: {FriendIds: user.listoffriends}.to_json, :content_type => 'application/json'
    else
      render json: {Error: "Duplicate"}.to_json, :content_type => 'application/json'
    end
  end

  def log_in
    puts "TESTESTTEST"

    user = User.find(params[:name])

    if (params[:password] == user.password)
      render json: {Accept: "True"}.to_json, :content_type => 'application/json'
    end

    render json: {Accept: "False"}.to_json, :content_type => 'application/json'
  end

  #def log_out
  #end
end
