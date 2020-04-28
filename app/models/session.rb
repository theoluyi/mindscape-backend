class Session < ApplicationRecord
  belongs_to :user
  has_many :perceptions, dependent: :destroy
end
