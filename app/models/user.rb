class User < ApplicationRecord
devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :notifications, foreign_key: :recipient_id

end
