class Review < ApplicationRecord


  validates :content, presence: true
  validates :rating, numericality: true, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }


  belongs_to :restaurant

  # validates :name, presence: true
  # validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
  # validates :address, presence: true

  # has_many :reviews, dependent: :destroy



end
