require 'rails_helper'

RSpec.describe Match, :type => :model do
  subject(:match) { Match.new serving_side: serving_side, recieving_side: recieving_side }
  let(:serving_side) { MatchAssignment.new }
  let(:recieving_side) { MatchAssignment.new }

  describe '#assign_sides!' do
  end

  describe '#score' do
    before do
      serving_side.points = 21
      recieving_side.points = 0
    end

    it 'returns the game results' do
      expect(match.score).to eq '21-0'
    end
  end

  describe '#score!' do
    context 'when points are legal' do
      it 'sets the score of the match' do
        match.score!(21, 0)
        expect(match.score).to eq '21-0'
      end
    end

    context 'when points are negative' do
      it { expect{ match.score!(-1,21) }.to raise_error ArgumentError }
    end
  end

  describe '#winner' do
    let(:winner) { Team.new }
    let(:loser) { Team.new }

    before do
      match.serving_side = winner
      match.recieving_side = loser
    end

    context 'when match has finished' do
      before { match.score!(21, 0) }

      it 'returns the team that won' do
        expect(match.winner).to be winner
      end
    end

    context 'when match has not finished' do
      it { expect{ match.winner }.to raise_error Match::NotFinishedError }
    end
  end

  describe '#loser' do
    context 'when match has finished' do
      before { match.score!(21, 0) }

      it 'returns the team that lost' do
        expect(match.loser).to be loser
      end
    end

    context 'when match has not finished' do
      it { expect{ match.loser }.to raise_error Match::NotFinishedError }
    end
  end
end

