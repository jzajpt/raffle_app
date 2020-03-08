FactoryBot.define do
  sequence :email do |n|
    "joedoe#{n}@gmail.com"
  end

  factory :participant do
    email { generate :email }
    raffle { nil }
  end
end
