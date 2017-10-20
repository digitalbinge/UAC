require 'test_helper'

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get question_1" do
    get questions_question_1_url
    assert_response :success
  end

  test "should get question_2" do
    get questions_question_2_url
    assert_response :success
  end

  test "should get question_3" do
    get questions_question_3_url
    assert_response :success
  end

  test "should get question_4" do
    get questions_question_4_url
    assert_response :success
  end

end
