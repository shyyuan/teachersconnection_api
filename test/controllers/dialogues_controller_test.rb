require 'test_helper'

class DialoguesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dialogue = dialogues(:one)
  end

  test "should get index" do
    get dialogues_url, as: :json
    assert_response :success
  end

  test "should create dialogue" do
    assert_difference('Dialogue.count') do
      post dialogues_url, params: { dialogue: { content: @dialogue.content, event_id: @dialogue.event_id, teacher_id: @dialogue.teacher_id } }, as: :json
    end

    assert_response 201
  end

  test "should show dialogue" do
    get dialogue_url(@dialogue), as: :json
    assert_response :success
  end

  test "should update dialogue" do
    patch dialogue_url(@dialogue), params: { dialogue: { content: @dialogue.content, event_id: @dialogue.event_id, teacher_id: @dialogue.teacher_id } }, as: :json
    assert_response 200
  end

  test "should destroy dialogue" do
    assert_difference('Dialogue.count', -1) do
      delete dialogue_url(@dialogue), as: :json
    end

    assert_response 204
  end
end
