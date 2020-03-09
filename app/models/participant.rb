class Participant < ApplicationRecord
  belongs_to :raffle, counter_cache: true

  validates :raffle_id, presence: true
  validates :email,
    presence: true,
    length: { maximum: 255 },
    email: { strict_mode: true, allow_blank: true },
    uniqueness: { scope: :raffle_id }
end
