class Player < ApplicationRecord
  has_many :signings
  has_many :teams
  validates :name, presence: true, uniqueness: true
  validates :position, presence: true
end
