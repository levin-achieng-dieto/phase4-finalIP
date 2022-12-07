class SingleAirlineSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :avg_score, :reviews

  has_many :reviews, serializer: ReviewSerializer
end
