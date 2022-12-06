class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :score
  has_one :airline
end
