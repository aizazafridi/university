require "application_system_test_case"

class QuestionChoicesTest < ApplicationSystemTestCase
  setup do
    @question_choice = question_choices(:one)
  end

  test "visiting the index" do
    visit question_choices_url
    assert_selector "h1", text: "Question Choices"
  end

  test "creating a Question choice" do
    visit question_choices_url
    click_on "New Question Choice"

    fill_in "Choice", with: @question_choice.choice
    check "Is right choice" if @question_choice.is_right_choice
    click_on "Create Question choice"

    assert_text "Question choice was successfully created"
    click_on "Back"
  end

  test "updating a Question choice" do
    visit question_choices_url
    click_on "Edit", match: :first

    fill_in "Choice", with: @question_choice.choice
    check "Is right choice" if @question_choice.is_right_choice
    click_on "Update Question choice"

    assert_text "Question choice was successfully updated"
    click_on "Back"
  end

  test "destroying a Question choice" do
    visit question_choices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Question choice was successfully destroyed"
  end
end
