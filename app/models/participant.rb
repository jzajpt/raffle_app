class Participant < ApplicationRecord
  belongs_to :raffle

  validates :email,
    presence: true,
    length: { maximum: 255 },
    email: { strict_mode: true },
    uniqueness: { scope: :raffle_id }
end
