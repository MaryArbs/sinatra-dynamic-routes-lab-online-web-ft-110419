require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
    end

  get '/square/:number' do
    @num = params[:number].to_i
    square = @num * @num
    square.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    phrase_array = []
    @number.times {|x| phrase_array << @phrase}
    phrase_array.join(" ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
  end 

end
