class DivisionTeam < ApplicationRecord
  belongs_to :team
  belongs_to :division
  belongs_to :game
  validates :team,
    uniqueness: { scope: :division,
                  message: 'Team/division has already been added to this game'}

  scope :boys, -> { where division: Division.boys }
  scope :girls, -> { where division: Division.girls }

  def description
    "#{team.name} - #{division.name}"
  end

end
