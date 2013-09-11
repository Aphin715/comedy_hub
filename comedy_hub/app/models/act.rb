class Act < ActiveRecord::Base
  belongs_to :comedian
  belongs_to :show
end
