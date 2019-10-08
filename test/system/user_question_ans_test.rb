require "application_system_test_case"

class UserQuestionAnsTest < ApplicationSystemTestCase
  setup do
    @user_question_an = user_question_ans(:one)
  end

  test "visiting the index" do
    visit user_question_ans_url
    assert_selector "h1", text: "User Question Ans"
  end

  test "creating a User question an" do
    visit user_question_ans_url
    click_on "New User Question An"

    fill_in "Is right", with: @user_question_an.is_right
    click_on "Create User question an"

    assert_text "User question an was successfully created"
    click_on "Back"
  end

  test "updating a User question an" do
    visit user_question_ans_url
    click_on "Edit", match: :first

    fill_in "Is right", with: @user_question_an.is_right
    click_on "Update User question an"

    assert_text "User question an was successfully updated"
    click_on "Back"
  end

  test "destroying a User question an" do
    visit user_question_ans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User question an was successfully destroyed"
  end
end
