class Player < ApplicationRecord
  has_many :signings
  has_many :teams
  has_one_attached :photo
  validates :name, presence: true
  # validates :position, presence: true


end
