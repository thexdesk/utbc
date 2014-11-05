class Tournament < ActiveRecord::Base
  NoEventError = Class.new(RuntimeError)

  has_many :events, dependent: :destroy
  has_many :matches, through: :events


  def create_event(options={})
    events.new options
  end
end
