class Contact < ApplicationRecord
  validates :email, presence: true, length: { minimum: 3 }
  validates :message, presence: true
end
