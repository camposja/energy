class SessionController < ApplicationController
  # logging in
  def new
  end

  # handle the post from the login page
  def create
    self.current_user = User.from_omniauth(request.env['omniauth.auth'])

    if current_user
      redirect_to root_path
    else
      redirect_to auth_path(provider: 'github')
    end
  end

  # logout
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  def souvenir_email
    city = @city
    user = current_user

    NotificationsMailer.your_town(city, user).deliver_later
    redirect_to cities_path
  end
end
