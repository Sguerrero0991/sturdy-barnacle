class Team 
    attr_reader :team_name, :city, :roster
    def initialize(team_name, city)
        @team_name = team_name
        @city = city 
        @roster = []
    end

    def player_count
        @roster.count
    end

    def add_player(player)
       @roster << player
    end

    def long_term_players
        @contract_length > 2
    end

    def short_term_players
        @contract_length < 2
    end

    def total_value
        @roster.total_cost
    end



#* Player is considered a long term player if their contract length is greater than two years.
#* Player is considered a short term player if their contract length is two years or less.
#* Payroll is the total cost of all of the players.
end
