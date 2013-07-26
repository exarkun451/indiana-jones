require 'rubygems'
require 'sinatra'

set :sessions, true

helpers do
end

before do
end

get '/' do
	erb :opening
end

post '/start_game' do
	redirect '/new_player'
end

get '/new_player' do
	session[:index] = 0
	session[:correct] = 0
	@answer1 = nil
	@answer2 = nil
	@answer3 = nil
	@answer4 = nil
		session[:questions] = [["What animal does Indy's dad dislike?", "1-rats"],
		["Who portrays Indy's father in the movie", "2-Sean Connery"],
		["Who said 'Nazis, I hate these guys'", "3-Indiana Jones"],
		["Who autographs the dairy for Indiana Jones", "4-Hitler"],
		["What happens to the men who enter the first booby trap on the way to the Holy Grail", "5-They are decapitated"],
		["Only this type of man 'will pass'", "6-Penitent"],
		["What letter does Indy step on, which nearly causes him to fall down the pit?", "7-J"],
		["When Donovan drinks from what he thinks is the Holy Grail, what happens?", "8-He ages rapidly, dies, and turns to dust"],
		["After Donovan drinks from what he thinks is the Holy Grail... what does the Knight say?", "9-He chose poorly"],
		["What is Indiana's real name?", "10-Henry Jones, Jr."],
		["When Indiana comes to the castle disguised as a scottish lord, what does he say that he wishes to see?", "11-The tapestries"],
		["What does the young Indy stumble across, at the beginning of the movie?", "12-The Cross of Coronado"]]
	session[:answers] = [["rats", "spiders", "dogs", "snakes"], 
			["Alec Guinness", "Sean Connery", "Jack Lemmon", "Kirk Douglas"], 
			["Elsa Schnieder", "Indiana Jones","Marcus Brody", "Sallah"], 
			["Hitler", "his father", "Henry", "Elsa"], 
			["They are shot with poisoned darts", "They fall through a trap door", "They are impaled", "They are decapitated"], 
			["merciful", "penitent", "agile", "faithful"], 
			["H", "K", "I", "J"], 
			["He looks the same physically, but begins to choke and die", "He ages rapidly, dies, and turns to dust", 
				"He grows very old then runs away screaming", "He explodes"], 
			["Dang...", "He chose poorly", "He chose really, really poorly", "Be careful that you don't make the same mistake"], 
			["Henry Jones, Jr.", "John Jones, Jr.", "James Indiana Jones. Jr.", "Indiana Jones, Jr."], 
			["his quarters", "the paintings", "Miss Schnieder", "The tapestries"], 
			["A Crystal Skull", "The Ark", "The Cross of Coronado","The Shroud of Turin"]]
	erb :question1
end

post '/next_question' do
	redirect '/next_question'
end

get '/next_question' do
	session[:index] += 1
	if session[:index] == 0
		erb :question1
	elsif session[:index] == 1
		erb :question2
	elsif session[:index] == 2
		erb :question3
	elsif session[:index] == 3
		erb :question4
	elsif session[:index] == 4
		erb :question5
	elsif session[:index] == 5
		erb :question6
	elsif session[:index] == 6
		erb :question7
	elsif session[:index] == 7
		erb :question8
	elsif session[:index] == 8
		erb :question9
	elsif session[:index] == 9
		erb :question10
	elsif session[:index] == 10
		erb :question11
	elsif session[:index] == 11
		erb :question12
	else
		erb :birthday
	end
end

post '/wrong' do
	erb :wrong
end

post '/correct' do
	session[:correct] += 1
	erb :correct
end

get '/game' do
	erb :birthday
end

post '/another_game' do
	redirect '/'
	end










