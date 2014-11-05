require 'rails_helper'

RSpec.describe Event, :type => :model do
  subject(:event) { Event.new }

  describe '#begin!' do
    context 'when there are no players' do
      it { expect(event.begin!).to raise_error Event::NoPlayerError }
    end

    context 'when there is at least one player' do
      it 'begins the event' do
      end
    end
  end

  describe '#register_user!' do
    let(:user) { User.new }

    context 'when user already registered' do
      before { event.register_user!(user) }

      it { expect{ event.register_user!(user) }.to raise_error Event::AlreadyRegisteredError }
    end

    context 'when user not registered' do
      it 'registers the user' do
        expect{ event.register_user!(user) }.to change{ event.teams.size }.by 1
      end

      it 'wraps the user in a team' do
      end
    end
  end

  describe '#winners' do
    context 'when event has not finished' do
      it 'has no winner' do
        expect(event.winners).to be_empty
      end
    end

    context 'when event has finished' do
      it 'has at least one winner' do
        expect(event.winners.size).to be >= 1
      end
    end
  end

  describe '#losers' do
    context 'when no matches has been played' do
      it 'has no losers' do
        expect(event.losers).to be_empty
      end
    end

    context 'when at least one match have been played' do
      it 'has at least one loser' do
        expect(event.losers.size).to be >= 1
      end
    end
  end

  describe '#build_matches' do
    context 'when strategy is single-elimination' do
    end
  end
end

