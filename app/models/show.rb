class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    highest_rating = self.highest_rating
    Show.find_by :rating highest_rating
  end
end
