class Comment < ApplicationRecord
  belongs_to :article
  validates :author, presence: true, length: { minimum: 3 }
  validates :body, presence: true
end
