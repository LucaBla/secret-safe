class Comment < ApplicationRecord
  belongs_to :secret
  belongs_to :user

  validates :body, length: { minimum: 3}
end
