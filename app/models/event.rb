class Event < ActiveRecord::Base
  has_many :matches, dependent: :destroy
  has_many :players, class: User, through: :registrations
  has_many :registrations

  belongs_to :tournament

  def register_user(user)
    registrations.new user: user
  end
end
