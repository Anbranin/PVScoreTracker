class Team < ApplicationRecord
  belongs_to :division

  has_many :games_teams
  has_many :games, through: :games_teams

  validates :name, uniqueness: true, presence: true

  def description
    "#{team.name} - #{division.name}"
  end
end
