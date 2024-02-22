# frozen_string_literal: true

module FavoritesHelper
  def favorited(cityId)
    return true if Favorite.where(city_id: cityId, user_id: current_user.id).exists?

    false
  end
end
