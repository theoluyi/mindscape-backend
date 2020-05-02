class SessionSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time, :duration, :landscape, :summary, :perceptions
  has_many :perceptions, include_nested_associations: true
end