class Like < ActiveRecord::Base
  belongs_to :artwork
  belongs_to :user
end
