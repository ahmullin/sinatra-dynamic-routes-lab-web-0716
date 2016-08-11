require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @reversename = params[:name].reverse
    erb :reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    erb :square
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase].to_s
    erb :number_phrase
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase].to_s
    erb :number_phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    params.collect do |keyword, value|
      if keyword.include?("word")
        value
      end
    end.join(" ")+"."
  end

    get '/:operation/:number1/:number2' do
      @operation = params[:operation]
      @num1 = params[:number1].to_i
      @num2 = params[:number2].to_i
      erb :operation
    end


end
