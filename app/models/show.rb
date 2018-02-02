class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    highest_rating = Show.highest_rating
    binding.pry
    Show.find_by :rating highest_rating
  end
end
