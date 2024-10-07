module CardManagement
  module Models
    class CardCollection < ApplicationRecord
      belongs_to :user, class_name: "Users::Models::User", foreign_key: :user_id

      validates :name, :user_id, presence: true
    end
  end
end
