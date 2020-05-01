require 'sinatra/base'
require 'date'

class Birthday < Sinatra::Base

get '/' do 
  erb :index
end

post '/message' do 
  @name = params[:name]
  @day = params[:day]
  @month = params[:month]
  @bday = Date.new(2020,@month.to_i,@day.to_i)
  @today = Date.today
  @how_long = (@bday - @today).to_i
  erb :message
end

run! if app_file == $0

end