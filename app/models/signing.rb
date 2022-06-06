class Signing < ApplicationRecord
  belongs_to :team
  belongs_to :player
  validates :player, presence: true, uniqueness: { scope: :team }
  POSITIONS = ['Goalkeeper', 'Right Back', 'Left Back', 'Center Back', 'Sweeper', 'Left Wing', 'Right Wing', 'Defensive Midfield', 'Centre Midfield', 'Attacking Midfield', 'Left Midfield', 'Right Midfield', 'Stiker' ]
  validates :position, inclusion: { in: POSITIONS }

  # def player_name
  #   player.name if player
  # end

  # def player_name=(name)
  #   self.player = Player.find_by_name(name) if name.present?
  # end
end
