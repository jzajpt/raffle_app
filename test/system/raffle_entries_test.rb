require "application_system_test_case"

class RaffleEntriesTest < ApplicationSystemTestCase
  setup do
    @raffle = create :raffle, name: "Win a fancy dinner"
  end

  test "First submission - odds are 100%" do
    visit root_url
    select "Win a fancy dinner", from: "Select raffle you wish to enter"
    fill_in "Enter your email", with: "joedoe@gmail.com"
    click_on "Enter raffle!"

    assert_text "Thanks for signing up"
    assert_text "Your odds of winning are 100%"
  end

  test "Second submission - odds are 50%" do
    create :participant, raffle: @raffle

    visit root_url
    select "Win a fancy dinner", from: "Select raffle you wish to enter"
    fill_in "Enter your email", with: "janedoe@gmail.com"
    click_on "Enter raffle!"

    assert_text "Thanks for signing up"
    assert_text "Your odds of winning are 50%"
  end
end
