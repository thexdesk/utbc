require 'rails_helper'

RSpec.describe Event, :type => :model do
  let(:event) { Event.new }

  describe '#register_user' do
    let(:user) { User.new }

    it 'registers an user' do
      event.register_user(user)
      expect(event.registrations.last.user).to be
    end
  end
end

