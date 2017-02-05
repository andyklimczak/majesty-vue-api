require 'test_helper'

class PaginationStoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pagination_story = pagination_stories(:one)
  end

  test "should get index" do
    get pagination_stories_url, as: :json
    assert_response :success
  end

  test "should create pagination_story" do
    assert_difference('PaginationStory.count') do
      post pagination_stories_url, params: { pagination_story: { plot: @pagination_story.plot, upvotes: @pagination_story.upvotes, writer: @pagination_story.writer } }, as: :json
    end

    assert_response 201
  end

  test "should show pagination_story" do
    get pagination_story_url(@pagination_story), as: :json
    assert_response :success
  end

  test "should update pagination_story" do
    patch pagination_story_url(@pagination_story), params: { pagination_story: { plot: @pagination_story.plot, upvotes: @pagination_story.upvotes, writer: @pagination_story.writer } }, as: :json
    assert_response 200
  end

  test "should destroy pagination_story" do
    assert_difference('PaginationStory.count', -1) do
      delete pagination_story_url(@pagination_story), as: :json
    end

    assert_response 204
  end
end
