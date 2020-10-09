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

  # イメージのバリデーション
  def image_presence
    unless image.attached?
      errors.add(:image, 'ファイルを添付してください')
    end
  end

  # スライドのバリデーション
  def slide_presence
    unless slide.attached?
      errors.add(:slide, 'ファイルを添付してください')
    end
  end

  
end
