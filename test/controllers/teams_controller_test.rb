require 'test_helper'

class TeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team = teams(:one)
  end

  test "should get index" do
    get teams_url
    assert_response :success
  end

  test "should get new" do
    get new_team_url
    assert_response :success
  end

  test "should create teams" do
    assert_difference('Team.count') do
      post teams_url, params: {teams: {name: @team.name } }
    end

    assert_redirected_to team_url(Team.last)
  end

  test "should show teams" do
    get team_url(@team)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_url(@team)
    assert_response :success
  end

  test "should update teams" do
    patch team_url(@team), params: {teams: {name: @team.name } }
    assert_redirected_to team_url(@team)
  end

  test "should destroy teams" do
    assert_difference('Team.count', -1) do
      delete team_url(@team)
    end

    assert_redirected_to teams_url
  end
end
