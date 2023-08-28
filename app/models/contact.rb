class Contact < ApplicationRecord
  validates :name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :message, presence: true
end
