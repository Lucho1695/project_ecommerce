class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, presence: true, length: {maximum: 253, minimum: 2}, uniqueness: { case_sensitive: true }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
