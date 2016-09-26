require 'sinatra'
require 'sinatra/reloader'

SECRET_NUMBER = rand(100)

get '/' do
  guess = params["guess"].to_i
  message = check_guess(guess)
  color = get_color(guess)
  erb :index, :locals => {:message => message, :color => color, :guess => guess}
end

def check_guess(guess)
  if guess > (SECRET_NUMBER + 5)
    message = " Way too high!"
  elsif guess < (SECRET_NUMBER - 5)
    message = "Way too low!"
  elsif guess < SECRET_NUMBER
    message = "Too low!"
  elsif guess > SECRET_NUMBER
    message = "Too high!"
  else
    message = "You got it right! The number is #{SECRET_NUMBER}."
  end
end

def get_color(guess)
  if guess > (SECRET_NUMBER + 5) || guess < (SECRET_NUMBER - 5)
    color = "red"
  elsif guess < SECRET_NUMBER || guess > SECRET_NUMBER
    color = "lightsalmon"
  else
    color = "green"
  end
end
