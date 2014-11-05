class Match < ActiveRecord::Base
  with_options class_name: MatchAssignment do
    has_one :serving_side
    has_one :recieving_side
  end

end
