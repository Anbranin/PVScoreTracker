class Game < ApplicationRecord
  validates :year, uniqueness: true, presence: true, length: { is: 4 }

  has_many :division_teams

end
