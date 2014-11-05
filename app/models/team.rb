class Team < ActiveRecord::Base
  has_many :players
  has_many :matches, through: :match_assignments
  has_many :match_assignments
end
