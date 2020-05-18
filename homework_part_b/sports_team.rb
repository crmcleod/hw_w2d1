class SportsTeam

    attr_reader :team_name, :players
    attr_accessor :coach
    def initialize(team_name, players, coach)
        @team_name = team_name
        @players = players
        @coach = coach
    end

end