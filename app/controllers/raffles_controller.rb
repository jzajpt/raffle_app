class RafflesController < ApplicationController
  def index
    @participant = Participant.new
  end
end
