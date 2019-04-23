# Preview all emails at http://localhost:3000/rails/mailers/lead_mailer
class LeadMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/lead_mailer/welcome
  def welcome
    lead = Lead.first
    LeadMailer.welcome(lead)
  end

end
