class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  # YOUR CODE HERE
end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  raise NoSuchStrategyError unless game[0][1].downcase.match(/[prs]/)
  raise NoSuchStrategyError unless game[1][1].downcase.match(/[prs]/)
  
  strat1 = game[0][1].downcase
  strat2 = game[1][1].downcase

  if strat1 == 'p' and strat2 != 's'
	return game[0]
  elsif strat1 == 'r' and strat2 != 'p'
	return game[0]
  elsif strat1 == 's' and strat2 != 'r'
  	return game[0]
  end
  return game[1]

end

def rps_tournament_winner(tournament)
  if tournament[0][0].kind_of?(String)
	return rps_game_winner(tournament)
  else 
	return rps_tournament_winner([rps_tournament_winner(tournament[0]) , rps_tournament_winner(tournament[1])])
  end
end

