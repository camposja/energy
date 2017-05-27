class NotificationsMailer < ApplicationMailer
  default from: "100pct@RenewableEnergy.org"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications_mailer.your_town.subject
  #
  def your_town(energy_enthusiast)
    mail to: energy_enthusiast.email,
         subject: "100% Renewable Energy Cities → Your Town"
  end
end
