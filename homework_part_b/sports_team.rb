class SportsTeam

    attr_reader :team_name
    attr_accessor :coach, :players, :points
    def initialize(team_name, players, coach, points)
        @team_name = team_name
        @players = players
        @coach = coach
        @points = points
    end

    def find_player(player_to_find)
        for player in @players
            return player_to_find if player == player_to_find
        end
    end


    def add_points_for_win(game_outcome)
        @points += 1 if game_outcome == "Win"
    end

end