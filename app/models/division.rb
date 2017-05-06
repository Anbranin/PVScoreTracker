class Division < ApplicationRecord
  has_many :division_teams
  has_many :teams, through: :division_teams

  validates :type, presence: true, uniqueness: true

end
