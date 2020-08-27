class Profile < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_one_attached :image
  has_one_attached :slide
  has_many :reviews

  with_options presence: true do
    validates :title
    validates :self_introduction
    validates :price
  end

  validate :image_presence
  validate :slide_presence

  def image_presence
    if image.attached?
      errors.add(:image, 'にはjpegまたはpngファイルを添付してください') unless image.content_type.in?(%('image/jpeg image/png'))
    else
      errors.add(:image, 'ファイルを添付してください')
    end
  end

  def slide_presence
    if slide.attached?
      errors.add(:slide, 'にはjpegまたはpngファイルを添付してください') unless image.content_type.in?(%('image/jpeg image/png'))
    else
      errors.add(:slide, 'ファイルを添付してください')
    end
  end

  
end
