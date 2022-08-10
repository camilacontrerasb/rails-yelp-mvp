class Restaurant < ApplicationRecord
  CATEGORY = %w[chinese italian japanese french belgian]

  validates :category, inclusion: { in: CATEGORY }
  validates :name, :address, presence: true
  has_many :reviews, dependent: :destroy
end
