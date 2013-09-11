class Comedian < ActiveRecord::Base
  validates_presence_of :first_name
  has_many :acts
end
