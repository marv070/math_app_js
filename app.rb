require 'sinatra'
require_relative 'calc_functions.rb'
enable :sessions

get'/' do
  message = params[:message] || ' '
  erb :login, locals: {message: message}
end

post'/login' do
username = params[:username]
password = params[:password]
valid_login(username,password)
# "#{username}user and pass is #{password}"
end

get '/math' do
  message = params[:message]
   erb :math, locals: {message: message}

end

post '/math' do
  session[:num1] = params[:num1].to_i
  session[:num2] = params[:num2].to_i
  session[:op] = params[:op]
  # " #{session[:num1]} and #{session[:num2]} will be #{session[:op]}"
 redirect '/results'
end
      
get '/results' do
  results = math(session[:num1],session[:num2],session[:op])
  symbol = symbol_converter(session[:op])
  erb :results, locals: { num1: session[:num1], num2: session[:num2], op: symbol, results: results}

end