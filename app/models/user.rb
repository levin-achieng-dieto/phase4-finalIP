class User < ApplicationRecord
    #require 'active_support/core_ext'

    has_many :reviews
    has_many :airlines, through: :reviews

    has_secure_password

    validates :email, :password, presence: true, uniqueness: true
end
