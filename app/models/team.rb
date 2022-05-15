class Team < ApplicationRecord
  has_many :signings, dependent: :destroy
  has_many :players, through: :signings
  has_one_attached :photo
  validates :name, presence: true, uniqueness: true
end
