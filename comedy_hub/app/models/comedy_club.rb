class ComedyClub < ActiveRecord::Base
  has_many :shows
  has_many :acts, through: :shows
  has_many :comedians, through: :acts
end
