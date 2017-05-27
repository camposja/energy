class FavoritesController < ApplicationController
  def create
    current_user.favorites.create(city_id: params[:cityId])
  end

  def destroy
    favorite = Favorite.find_by(city_id: params[:cityId], user_id: current_user.id)
    favorite.destroy
  end
end
