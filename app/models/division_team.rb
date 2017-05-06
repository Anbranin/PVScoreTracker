class DivisionTeam < ApplicationRecord
  belongs_to :team
  belongs_to :division
  validates :team, uniqueness: { scope: :division }
  
end
