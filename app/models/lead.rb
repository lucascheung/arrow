class Lead < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :message, presence: true
  validates :email, presence: true

  after_create :send_welcome_email

  def send_welcome_email
    LeadMailer.welcome(self).deliver_now
  end
end
