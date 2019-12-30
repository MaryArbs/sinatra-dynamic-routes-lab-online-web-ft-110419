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
    result = @phrase(@number)
  end

end
