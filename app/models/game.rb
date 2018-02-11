class Game < ApplicationRecord
  validates :year, uniqueness: true, presence: true

  has_many :division_teams

end
