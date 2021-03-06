class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false,
    message: "This cocktail already exists" }
  mount_uploader :photo, PhotoUploader
end
