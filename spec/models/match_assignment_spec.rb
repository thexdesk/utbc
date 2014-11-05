require 'rails_helper'

RSpec.describe MatchAssignment, :type => :model do
  subject(:match_assignment) { MatchAssignment.new }

  describe '#record_points' do
    context 'when recording a legal value' do
      let(:legal_value) { Random.rand(0..21) }

      it 'records the points' do
        match_assignment.record_points(legal_value)
        expect(match_assignment.points).to eq legal_value
      end
    end

    context 'when recording a negative value' do
      it 'raises ArgumentError' do
        expect(match_assignment.record_points(-1)).to raise_error ArgumentError
      end
    end
  end

  describe '#forfeit' do
  end
end
