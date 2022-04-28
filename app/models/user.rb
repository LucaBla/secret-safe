class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :username, length: { in: 3..20}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :secrets
  has_many :comments

  def controversy_points
    all_comments = 0
    self.secrets.each do |secret|
      all_comments += secret.comments.count
    end
    return 0 if all_comments == 0 || self.secrets.count == 0
    all_comments / self.secrets.count
  end
end
