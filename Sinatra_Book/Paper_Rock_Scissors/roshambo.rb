require "sinatra"
require "sinatra/reloader" if development?

before do
  content_type :html
  @defeat = {rock: :scissors, paper: :rock, scissors: :paper}
  @throws = @defeat.keys
end

get('/') do
  erb :throw
end

post('/throw') do
  erb :outcome
end

# get '/throw/:type' do
#   player_throw = params[:type].to_sym
#   
#   if !@throws.include?(player_throw)
#     halt 403, "You must throw one of the following: #{@throws}"
#   end
#   
#   computer_throw = @throws.sample
#   
#   if player_throw == computer_throw
#     "You tied, throw again"
#   elsif computer_throw == @defeat[player_throw]
#     "YOU WIN! Outcome #{player_throw} defeats #{computer_throw}"
#   else
#     "YOU LOSE! Outcome #{player_throw} is defeated by #{computer_throw}"
#   end
# end