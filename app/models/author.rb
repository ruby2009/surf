class Author < ApplicationRecord
  has_many :cheeses
  has_secure_password
  validates :name, :avatar, presence: true
  validates :name, uniqueness: true

  def to_s
    name
  end

end
