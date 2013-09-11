class Show < ActiveRecord::Base
  belongs_to :comedy_club
  has_many :acts
  validates_presence_of :comedy_club
end
