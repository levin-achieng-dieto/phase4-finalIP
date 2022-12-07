class AirlineSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :avg_score
end
