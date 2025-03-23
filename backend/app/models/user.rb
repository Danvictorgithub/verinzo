class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :image
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable, :confirmable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  validates :image, content_type: %i[png jpg jpeg], size: { less_than: 2.megabytes }
  validates :username, presence: true, uniqueness: true
end
