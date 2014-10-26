class User < ActiveRecord::Base
  has_many :events, through: :registrations
  has_one :rating
  has_one :rating_history, through: :rating
end
