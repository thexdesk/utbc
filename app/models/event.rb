class Event < ActiveRecord::Base
  has_many :matches, dependent: :destroy
  has_many :players, class: User

  belongs_to :tournament
end
