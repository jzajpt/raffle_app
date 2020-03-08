class Raffle < ApplicationRecord
  has_many :participants

  validates :name, presence: true
end
