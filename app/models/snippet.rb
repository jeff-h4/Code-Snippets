class Snippet < ActiveRecord::Base

  belongs_to :category

  validates :title, presence: true, uniqueness: true
  validates :work, presence: true, uniqueness: true

  #delegate :name, to: :category # @question.name
  delegate :name, to: :category, prefix: true # @question.category_name
  # +  # def category_name
  # +  #   category.name
  # +  # end
end
