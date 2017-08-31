def generate_brackets(players, round=1)
  if players.length > 0
    p = players.sample(2)
    puts "ROUND #{round} \n ----------------- \n #{p[0]}  VS. #{p[1]} \n -----------------"
    generate_brackets(players - p, round+1)
  end
end

def get_players
	puts "LET THE GAMES BEGIN!!!!!\n---------------\nEnter your players. There must be at least four and must be an EVEN number of players.\n Please enter separated by commas:\n"
	players = gets.split(',').map { |a| a.strip()}
  	if players.length % 2 != 0
    	puts "Sorry, not an even number of players"
     	return
  	end

	puts "Thanks! Here are your players:\n---------------\n"
	puts players
	puts "\n---------------\n"
	puts "Are you ready? To continue hit enter. Otherwise type 'redo' re-enter your players."

	if gets == "\n"
	 generate_brackets(players)
	else
	 	get_players
	end
end

get_players

