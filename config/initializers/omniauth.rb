Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GITHUB_APP_ID'], ENV['GITHUB_APP_SECRET']

  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET'],
  scope: 'email', info_fields: 'id,name,email,link'

  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
end
