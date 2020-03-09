class AddParticipantsCountToRaffles < ActiveRecord::Migration[6.0]
  def change
    add_column :raffles, :participants_count, :integer, default: 0

    reversible do |dir|
      dir.up do
        Raffle.pluck(:id).each do |id|
          Raffle.reset_counters id, :participants
        end
      end
    end
  end
end
