class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  # validation necessary to protect database on the model level

  validates :stars, inclusion: { in: [1, 2, 3, 4, 5], allow_nil: false }
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
end
