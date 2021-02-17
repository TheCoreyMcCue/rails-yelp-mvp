class Restaurant < ApplicationRecord
  # has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  CATEGORY = ['American', 'Italian', 'Dutch', 'Greek', 'French', 'Turkish']
  validates :category, inclusion: { in: CATEGORY}
end
