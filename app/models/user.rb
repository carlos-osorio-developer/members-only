class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true, length: { minimum: 4 }
  validates :email, presence: true, length: { minimum: 6 }
  validates :password, presence: true, length: { minimum: 6 }

  has_many :post, dependent: :destroy
end
