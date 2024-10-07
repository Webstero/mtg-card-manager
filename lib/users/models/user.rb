module Users
  module Models
    class User < ApplicationRecord
      devise :database_authenticatable, :registerable,
             :recoverable, :rememberable, :validatable

      has_many :card_collections, class_name: "CardManagement::Models::CardCollection", foreign_key: :user_id

      validates :email, :password, presence: true
    end
  end
end
