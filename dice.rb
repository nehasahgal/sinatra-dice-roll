# /Dice.rb

require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get("/") do
  erb(:elephant)
  #"
  #<h1>Dice Roll</h1>
  #<ul>
   # <li><a href=\"/dice/2/6\">Roll two 6-sided dice</a></li>
    #<li><a href=\"/dice/2/10\">Roll two 10-sided dice</a></li>
   # <li><a href=\"/dice/1/20\">Roll one 20-sided die</a></li>
   # <li><a href=\"/dice/5/4\">Roll five 4-sided dice</a></li>
  #</ul>
  #"
end

get("/zebra") do
  "We must add a route for each path we want to support"
end

get("/giraffe") do
  "Hopefully this shows up without having to restart the server :fingerscrossed"
end


get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die

  @outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
  erb(:two_six)
end

get("/dice/2/10") do
  first_roll = rand(1..10)
  second_roll = rand(1..10)
  sum_10 = first_roll + second_roll

  @outcome_10 = "You rolled a #{first_roll} and a #{second_roll} for a total of #{sum_10}."

  erb(:two_ten)
end

get("/dice/1/20") do
  roll_20 = rand(1..20)

  @outcome_20 = "You rolled a twenty-sided die with result #{roll_20}."

  erb(:one_twenty)
end

get("/dice/5/4") do
  roll_1_of_5 = rand(1..4)
  roll_2_of_5 = rand(1..4)
  roll_3_of_5 = rand(1..4)
  roll_4_of_5 = rand(1..4)
  roll_5_of_5 = rand(1..4)

  sum_5 = roll_1_of_5 + roll_2_of_5 + roll_3_of_5 + roll_4_of_5 + roll_5_of_5

  @outcome_5 = "You rolled a #{roll_1_of_5}, a #{roll_2_of_5}, a #{roll_3_of_5}, a #{roll_4_of_5}, and a #{roll_5_of_5}, for a total of #{sum_5}."

  erb(:five_four)
end
