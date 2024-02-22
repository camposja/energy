# frozen_string_literal: true

class SessionController < ApplicationController
  # logging in
  def new
    @redirect_user_url = params[:redirect_user_url]
  end

  # handle the post from the login page
  def create
    self.current_user = User.from_omniauth(request.env['omniauth.auth'])

    if current_user
      omniauth_params = request.env['omniauth.params']

      # Try to get that original redirect_user_url from omniauth
      # (the one we passed to the auth when the user clicked the login link)
      if omniauth_params && omniauth_params['redirect_user_url']
        redirect_to omniauth_params['redirect_user_url']
      else
        redirect_to root_path
      end
    else
      redirect_to auth_path(provider: 'github')
    end
  end

  # logout
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
