class Restaurant < ApplicationRecord

  # Validation
      # A restaurant must have at least a name and an address.
      # The restaurant category should belong to a fixed list ["chinese", "italian", "japanese", "french", "belgian"].
      # A review must have a parent restaurant.
      # A review must have content and a rating. The rating should be a number between 0 and 5.
      # When a restaurant is destroyed, all of its reviews should be destroyed as well.


  validates :name, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
  validates :address, presence: true

  has_many :reviews, dependent: :destroy


end
