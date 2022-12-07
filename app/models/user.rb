class User < ApplicationRecord
    has_many :reviews
    has_many :airlines, through: :reviews

    has_secure_password

    validates :email, :password, presence: true, uniqueness: true
end
