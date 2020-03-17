class Game < ApplicationRecord
  validates :year, uniqueness: true, presence: true, length: { is: 4 }

  has_many :games_teams
  has_many :teams, through: :games_teams

end
