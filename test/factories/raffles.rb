FactoryBot.define do
  sequence :name do |n|
    "Win somethin #{n}"
  end

  factory :raffle do
    name { generate(:name) }
  end
end
