# /Dice.rb

require "sinatra"
require "sinatra/reloader"

get("/") do
  "Hello world"
end

get("/zebra") do
  "We must add a route for each path we want to support"
end

get("/giraffe") do
  "Hopefully this shows up without having to restart the server :fingerscrossed"
end


get("/diceroll") do
 # <html>
 # <head>
  "<h1> Dice rolls </h1>"
  "<p> <a href="/dice/2/6">2d6</a> </p>"
 # <ul>
  #  <li><a href="/dice/2/6">2d6</a></li>
  #</ul>
  #</body>
  #</html>
end

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die

  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

  "<h1>2d6</h1>
  <p>#{outcome}</p>"
end

get("/dice/2/10") do
  first_roll = rand(1..10)
  second_roll = rand(1..10)
  sum_10 = first_roll + second_roll

  outcome_10 = "You rolled a #{first_roll} and a #{second_roll} for a total of #{sum_10}."

  "<h1>2d10</h1>
  <p>#{outcome_10}</p>"
end

get("/dice/1/20") do
  roll_20 = rand(1..20)

  outcome_20 = "You rolled a twenty-sided die with result #{roll_20}."

  "<h2>1d20</h2>
  <p>#{outcome_20}</p>"
end

get("/dice/5/4") do
  roll_1_of_5 = rand(1..4)
  roll_2_of_5 = rand(1..4)
  roll_3_of_5 = rand(1..4)
  roll_4_of_5 = rand(1..4)
  roll_5_of_5 = rand(1..4)

  sum_5 = roll_1_of_5 + roll_2_of_5 + roll_3_of_5 + roll_4_of_5 + roll_5_of_5

  outcome_5 = "You rolled a #{roll_1_of_5}, a #{roll_2_of_5}, a #{roll_3_of_5}, a #{roll_4_of_5}, and a #{roll_5_of_5}, for a total of #{sum_5}."

  "<h1>4d5</h1>
  <p>#{outcome_5}</p>"
end
