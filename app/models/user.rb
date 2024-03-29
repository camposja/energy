# frozen_string_literal: true

class User < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :cities, through: :favorites

  def self.from_omniauth(authentication_data)
    user = User.where(provider: authentication_data['provider'],
                      uid: authentication_data['uid']).first_or_create

    Rails.logger.debug "The user is #{user.inspect}"

    user.name         = authentication_data.info.name
    user.nickname     = authentication_data.info.nickname
    user.email        = authentication_data.info.email
    user.access_token = authentication_data.info.access_token

    user.save!

    Rails.logger.debug "After saving, the user is #{user.inspect}"

    user
  end
end
