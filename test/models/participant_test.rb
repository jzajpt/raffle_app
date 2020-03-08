require 'test_helper'

class ParticipantTest < ActiveSupport::TestCase
  context "validations" do
    should validate_presence_of(:email)
    should allow_value("user@example.com").for(:email)
    should_not allow_value("not-an-email").for(:email)

    should "not allow multiple entries into same raffle" do
      raffle = create :raffle
      p1 = create :participant, raffle: raffle
      p2 = build :participant, raffle: raffle, email: p1.email
      refute p2.valid?
    end

    should "allow same participant in multiple raffles" do
      raffle1 = create :raffle
      raffle2 = create :raffle
      email = "joedoe@gmail.com"
      p1 = create :participant, raffle: raffle1, email: email
      p2 = build :participant, raffle: raffle2, email: email
      assert p2.valid?
    end
  end
end
