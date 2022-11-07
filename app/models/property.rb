class Property < ApplicationRecord
  has_many :property_images, dependent: :destroy
  has_many :property_categories, dependent: :destroy
  has_many :blocked_periods, dependent: :destroy
  has_one :address, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :guest_capacity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  validates :bedrooms, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  validates :beds, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  validates :bathrooms, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  validates :type, presence: true, enum type: { user: apartment, house: 1 }
  validates :size, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
end