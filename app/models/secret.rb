class Secret < ApplicationRecord
  validates :title, :body, presence: true
  validates :title, length: { in: 3..50}
  validates :body, length: { minimum: 30}
end
