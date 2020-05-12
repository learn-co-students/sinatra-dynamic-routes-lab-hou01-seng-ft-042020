require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
  end

  get '/square/:number' do
    number = params[:number]
    @square_num = number.to_i ** 2
    "#{@square_num}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]
    @say_phrase = ''
    number.times do
      @say_phrase += phrase
    end
    @say_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @say_words = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5].insert(-1,'.')}"
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    
    case params[:operation]

    when 'add'
      return (num1 + num2).to_s
    when 'subtract'
      return (num1 - num2).to_s
    when 'multiply'
      return (num1 * num2).to_s
    when 'divide'
      return (num1 / num2).to_s
    end

  end

end
