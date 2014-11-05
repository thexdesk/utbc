class Event < ActiveRecord::Base
  AlreadyRegisteredError = Class.new(RuntimeError)

  has_many :matches, dependent: :destroy
  has_many :teams, class: Team, through: :registrations
  has_many :registrations

  belongs_to :tournament

  def register_for_event!(event)
    registrations.new user: self
  end
end
