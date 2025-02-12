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

    def contract_longer_than_2_years?
        @contract_length > 24
    end

    def contract_shorter_than_2_years?
        @contract_length < 24
    end

    def long_term_players(player)
        @roster.select do |players|
            players.contract_longer_than_2_years? == player
        end
    end

    def short_term_players(player)
        @roster.select do |players|
            players.contract_shorter_than_2_years? == player
        end 
    end

    def total_value
        @roster.total_cost
    end
end

#* Player is considered a long term player if their contract length is greater than two years.
#* Player is considered a short term player if their contract length is two years or less.
#* Payroll is the total cost of all of the players.