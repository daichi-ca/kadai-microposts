class FavoritesController < ApplicationController
  before_action: require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.add_favorite(micropost)
    flash[:success] = 'Micropostをお気に入りに登録しました。'
    redirect_to micropost
  end

  def destroy
  end
end
