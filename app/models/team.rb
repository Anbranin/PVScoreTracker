class Team < ApplicationRecord
  has_many :division_teams
  has_many :divisions, through: :division_teams
  has_many :teams, through: :division_teams

  validates :name, uniqueness: true, presence: true
end
