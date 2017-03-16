class Cheese < ApplicationRecord
  belongs_to :author
  validates :name, presence: true
  validate :url_xor_photo

  default_scope { order(created_at: :desc) }

  mount_uploader :cheese_photo, CheesePhotoUploader

  def is_owner?(this_author)
    author == this_author
  end

  private

  def url_xor_photo
    if picture.blank? && cheese_photo.blank? || picture.present? && cheese_photo.present?
      !errors[:base] << "Add an image url or a photo, not both"
    end
  end

end
