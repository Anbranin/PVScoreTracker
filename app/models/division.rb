class Division < ApplicationRecord
  has_many :division_teams
  has_many :teams, through: :division_teams

  validates :name, presence: true, uniqueness: true

  def self.girls
    Division.where("name like '%girl%'").first
  end

  def self.boys
    Division.where("name like '%boy%'").first
  end

end
