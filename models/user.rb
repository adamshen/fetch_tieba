class User < ActiveRecord::Base
  has_many :topics

  scope :top_10_active, -> { joins(:topics).group("users.id").order("count(users.id) DESC").limit(10) }
end