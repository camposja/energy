module FavoritesHelper
  def favorited(cityId)
    if Favorite.where(city_id: cityId, user_id: current_user.id).exists?
      return true
    else
      return false
    end
  end
end
