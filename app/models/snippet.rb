class Snippet < ActiveRecord::Base

  validates :title, presence: true, uniqueness: true
  validates :work, presence: true, uniqueness: true
end
