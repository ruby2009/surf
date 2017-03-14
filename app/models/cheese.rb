class Cheese < ApplicationRecord
  belongs_to :author
  validates :name, :picture, presence: true

  default_scope { order(created_at: :desc) }

end
