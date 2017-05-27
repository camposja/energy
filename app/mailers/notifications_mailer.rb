class NotificationsMailer < ApplicationMailer
  default from: "100pct@RenewableEnergy.org"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications_mailer.your_town.subject
  #
  def your_town(city, user)
    @user = user
    @city = city

    mail to: @user.email,
         subject: "100% Renewable Energy Cities → Your Town"
  end
end
