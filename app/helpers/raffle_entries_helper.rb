module RaffleEntriesHelper
  def calculate_odds(participant)
    count = participant.raffle.participants.count
    pct = 1.0 / count * 100
    number_to_percentage pct, precision: 0
  end
end
