class Secret < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, :body, presence: true
  validates :title, length: { in: 3..50}
  validates :body, length: { minimum: 30}
end
