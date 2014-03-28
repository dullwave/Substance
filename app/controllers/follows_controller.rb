class FollowsController < ApplicationController

  # respond_to do |format|
  #     if @song.save
  #       format.html { redirect_to @song, notice: 'Song was successfully created.' }
  #       format.json { render action: 'show', status: :created, location: @song }
  #       format.js
  #     else
  #       format.html { render action: 'new' }
  #       format.json { render json: @song.errors, status: :unprocessable_entity }
  #     end
  #   end

  # def update   ??????????
  #   @user = User.find(params[:user_id])
  # end

  def create
    @user = User.find(params[:user_id])
    current_user.follow(@user)
    render nothing: true, status: 200
  end

  def destroy
    @user = User.find(params[:user_id])
    current_user.stop_following(@user)
    render nothing: true, status: 200
  end

end
