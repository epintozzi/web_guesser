require 'sinatra'
require 'sinatra/reloader'

# get '/' do
#   rng = Random.new(8)
#   a = (0..100).to_a
#   number = a.sample(random: rng)
#   "The SECRET NUMBER is #{number}."
# end

number = rand(100)

get '/' do
  "The SECRET NUMBER is #{number}."
end
