require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test
    
    def test_team_name
        team = SportsTeam.new("Leith United", [], "Mad Billy", 0)
        assert_equal("Leith United", team.team_name())
    end

    def test_players
        team = SportsTeam.new("Leith United", ["John", "Dave", "Ben", "Sam", "Bart"], "Mad Billy", 0)
        assert_equal(["John", "Dave", "Ben", "Sam", "Bart"], team.players())
    end

    def test_coach
        team = SportsTeam.new("Leith United", [], "Mad Billy", 0)
        assert_equal("Mad Billy", team.coach())
    end

    def test_can_change_coach
        team = SportsTeam.new("Lochend Academicals", [], "Mad Billy", 0)
        team.coach = "Cyril Sneer"
        assert_equal("Cyril Sneer", team.coach())
    end

    def test_can_add_players
        team = SportsTeam.new("Newhaven Wanderers", [], "Chuckie Finster", 0 )
        team.players << "Splinter"
        assert_equal(["Splinter"], team.players())
    end

    # def test_check_if_player_in_array
    #     team = SportsTeam.new("Oxgang Wednesday", ["Fred"], "Tommy Pickles", 0)
    #     team.find_player("Fred")
    #     assert_equal(true, team.players())
    # end

    def test_adds_points_for_wins
        team = SportsTeam.new("Morningside FC", [], "Little My", 0)
        team.add_points_for_win("Win")
        assert_equal(1, team.points())
    end

end
