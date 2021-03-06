class Artwork < ActiveRecord::Base
  has_and_belongs_to_many :artists
  has_and_belongs_to_many :subjects
  has_many :images
  has_many :comments
  has_many :likes

  def artist_name
    self.artists.first.to_s
  end

  def liked_by? user
    !Like.find_by(artwork: self, user: user).nil?
  end
end
