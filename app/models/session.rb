class Session < ApplicationRecord
  belongs_to :user
  has_many :perceptions, dependent: :destroy
  accepts_nested_attributes_for :perceptions
end
