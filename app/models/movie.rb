class Movie < ActiveRecord::Base
  def self.all_ratings
    ratings = ['G','PG','PG-13','R']
  end
  def self.where_ratings(ratings)
    if ratings == []
      all
    else
      where(:rating => ratings)
    end
  end
end
