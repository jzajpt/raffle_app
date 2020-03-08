class RaffleEntriesController < ApplicationController
  def create
    @participant = Participant.new(participant_params)
    unless @participant.save
      render 'raffles/index'
    end
  end

  private

  def participant_params
    params.require(:participant).permit(:raffle_id, :email)
  end
end
