class Lead < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :message, presence: true
  validates :email, presence: true
end