require 'test_helper'

class UserQuestionAnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_question_an = user_question_ans(:one)
  end

  test "should get index" do
    get user_question_ans_url
    assert_response :success
  end

  test "should get new" do
    get new_user_question_an_url
    assert_response :success
  end

  test "should create user_question_an" do
    assert_difference('UserQuestionAn.count') do
      post user_question_ans_url, params: { user_question_an: { is_right: @user_question_an.is_right } }
    end

    assert_redirected_to user_question_an_url(UserQuestionAn.last)
  end

  test "should show user_question_an" do
    get user_question_an_url(@user_question_an)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_question_an_url(@user_question_an)
    assert_response :success
  end

  test "should update user_question_an" do
    patch user_question_an_url(@user_question_an), params: { user_question_an: { is_right: @user_question_an.is_right } }
    assert_redirected_to user_question_an_url(@user_question_an)
  end

  test "should destroy user_question_an" do
    assert_difference('UserQuestionAn.count', -1) do
      delete user_question_an_url(@user_question_an)
    end

    assert_redirected_to user_question_ans_url
  end
end
