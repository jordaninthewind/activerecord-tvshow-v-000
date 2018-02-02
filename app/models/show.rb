class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    x = self.highest_rating
    # binding.pry
    self.find_by(:rating => x)
  end
end
