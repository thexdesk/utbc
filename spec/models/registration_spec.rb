require 'rails_helper'

RSpec.describe Registration, :type => :model do
  subject(:registration) { Registration.new user: user, event: event }
  let(:user) { User.new }
  let(:event) { Event.new }

  describe '#take_attendance' do
    it 'takes the attendance of the registree' do
      registration.mark_attendance
      expect(registration.user.attended?).to_be true
    end
  end
end
