#Rock, Paper, Scissors.

require 'sinatra'

score = [0,0]

get "/" do
	"Rock, Paper, Scissors, Shoot!"
end

get "/rock" do
	comp = rand(3)
	if comp == 0
		score[0] += 1#cpu wins
		"Paper beats Rock that's #{score[0]} for me and #{score[1]} for you."
	elsif comp == 1 
		"It's a tie again, that's #{score[0]} for me and #{score[1]} for you."
	else
		score[1] += 1
		"You win playah that's #{score[0]} for me and #{score[1]} for you."
	end
	
end

get "/paper" do
	comp = rand(3)
	if comp == 0
		score[0] += 1
		"Scissors cut Paper that's #{score[0]} for me and #{score[1]} for you."
	elsif comp == 1 
		"It's a tie again that's #{score[0]} for me and #{score[1]} for you."
	else
		score[1] += 1
		"You win playah that's #{score[0]} for me and #{score[1]} for you."
	end
end

get "/scissors" do
	comp = rand(3)
	if comp == 0
		score[0] += 1
		"Rock crushes Scissors that's #{score[0]} for me and #{score[1]} for you."
	elsif comp == 1 
		"It's a tie again that's #{score[0]} for me and #{score[1]} for you."
	else
		score[1] += 1
		"You win playah that's #{score[0]} for me and #{score[1]} for you."
	end
end