require 'rails_helper'

RSpec.describe User, :type => :model do
  subject(:user) { User.new }

  describe '#rating' do
    context 'when rated' do
      before { user.ratings += ratings }
      let(:ratings) { [Rating.new(1500), Rating.new(1515)] }

      it 'returns the latest rating' do
        expect(user.rating).to eq ratings.last.to_i
      end
    end

    context 'when unrated' do
    end
  end

end

# - User should be able to register for a tournament's event
# - Tournament should be able to start
# Events should allocate first round of matches for users
# - Users should be able to complete matches by submitting a score
# - Users shoulds be able to submit a score
# - Completed matches should be able to return a winner
# Events should be able to allocate matches after sufficient matches have been completed
# Tournaments should be able to end
# Events should be able to end
# - Events should be able to return a champion
# Events should calculate new elo for a user
#
#
# Group Stage -> Winners go to playoffs
# Playoffs -> Winners advance
# Playoffs -> Losers go to single elimination
#
# Round Robin -> Single elimination
#
#
# edgar = User.new
# anita = User.new
#
# tournament = Tournament.new
# singles = Event.new :single_elimination
# tournament.add_event!(event)
# team_edgar = singles.register_user!(edgar)
# team_anita = singles.register_user!(anita)
# 
# tournament.begin!
#
# singles.matches.size == 1
#
# first_match = singles.matches.first
# first_match.teams.size == 2
# first_match.teams.include?(team_edgar)
# first_match.teams.include?(team_anita)
# first_match.score = '-'
#
# first_match.serving_side.present?
# first_match.recieving_side.present?
#
# first_match.score!(21, 0)
# [team_edgar, team_anita].include?(first_match.winner)
#
# event.winners.include?(team_edgar) || event.winners.include?(team_anita)
# 
