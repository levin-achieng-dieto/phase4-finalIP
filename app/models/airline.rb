class Airline < ApplicationRecord
    has_many :reviews

    validates :name, uniqueness: true
    validates :name, :image_url, presence: true
    # before_create :slugify

    # def slugify
    #     self.slug = name.parameterize
    # end

    def avg_score
        reviews.average(:score).round(2).to_f
    end 
end
