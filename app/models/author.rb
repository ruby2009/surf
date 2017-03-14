class Author < ApplicationRecord
  has_many :cheeses
  validates :name, :avatar, presence: true
end
