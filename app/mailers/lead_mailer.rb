class LeadMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.lead_mailer.welcome.subject
  #
  def welcome(lead)
    @lead = lead

    mail(to: @lead.email, subject: 'We will be in touch soon!')
  end
end
