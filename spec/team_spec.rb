require './lib/player'
require './lib/team'
require 'rspec' 


RSpec.describe Team do
  describe 'initialize' do
    it 'is a Team' do
      team = Team.new("Dodgers", "Los Angeles")
      expect(team).to be_a Team
    end

    it 'has a roster' do
      team = Team.new("Dodgers", "Los Angeles")
      player = Player.new("Michael Palledorous" , 1000000, 36)
      expect(team.roster).to eq([])
    end

    it 'counts amount of players' do
      team = Team.new("Dodgers", "Los Angeles")
      expect(team.player_count).to eq(0)
    end
  end

  describe '#add_player' do
    it 'counts the players after adding them to roster' do
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)

      expect(team.roster).to eq([player_1, player_2, player_3, player_4])
    end 
  end
  
end



