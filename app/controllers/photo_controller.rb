class PhotoController < ApplicationController
  def index
    @user = User.find_by(id: params[:id])
    @photos = Photo.where(user_id: params[:id])
    @comments = Comment.where(user_id: params[:id])
    @photo_i = Photo.all.where("user_id=?",params[:id])
    @comments_all = Comment.where(photo_id: @photo_i)
    @photo = Photo.find_by(id: @photo_i)
  end

  def show_user_name(user_id)
    @user = User.find_by(id: user_id)
    return  @user.first_name
  end
  helper_method :show_user_name
end
