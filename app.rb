# app.rb

require "sinatra"
require "sinatra/reloader"

moves = ["rock", "paper", "scissors"]

get("/") do
  erb(:rules)
end

get("/rock") do
  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end

  erb(:rock, { :layout => :wrapper })
end

get("/paper") do
  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "won"
  elsif @comp_move == "paper"
    @outcome = "tied"
  else
    @outcome = "lost"
  end

  erb(:paper, { :layout => :wrapper })
end

get("/scissors") do
  @comp_move = moves.sample
  
  if @comp_move == "rock"
    @outcome = "lost"
  elsif @comp_move == "paper"
    @outcome = "won"
  else
    @outcome = "tied"
  end
  
  erb(:scissors, { :layout => :wrapper })
end
