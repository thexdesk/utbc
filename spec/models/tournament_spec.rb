require 'rails_helper'

RSpec.describe Tournament, :type => :model do
  subject(:tournament) { Tournament.new }
  let(:event) { Event.new }

  describe '#begin!' do
    context 'when there are no events' do
      it { expect(tournament.begin!).to raise_error Tournament::NoEventError }
    end

    context 'when there is at least one event' do
      before { Tournament.add_event!(event) }

      it 'begins the tournament' do
      end
    end
  end

  describe '#add_event!' do
    it 'adds an event to the tournament' do
      expect { tournament.add_event!(event) }.to change{ tournament.events.size }.by 1
    end
  end
end

