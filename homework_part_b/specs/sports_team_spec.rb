require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test
    
    def test_team_name
        team = SportsTeam.new("Leith United", "100", "Mad Billy")
        assert_equal("Leith United", team.team_name())
    end

end
