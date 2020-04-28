class SessionSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time, :duration, :landscape
  has_many :perceptions
end