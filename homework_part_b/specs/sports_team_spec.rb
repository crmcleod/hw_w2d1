require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test
    
    def test_team_name
        team = SportsTeam.new("Leith United", [], "Mad Billy")
        assert_equal("Leith United", team.team_name())
    end

    def test_players
        team = SportsTeam.new("Leith United", ["John", "Dave", "Ben", "Sam", "Bart"], "Mad Billy")
        assert_equal(["John", "Dave", "Ben", "Sam", "Bart"], team.players())
    end

end
