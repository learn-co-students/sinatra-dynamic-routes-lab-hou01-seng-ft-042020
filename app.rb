require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
      @name = params[:name]
      "#{@name.reverse}"
  end 

get '/square/:number' do 
  @num = params[:number]
  "#{@num.to_i**2}"
end 

get '/say/:number/:phrase' do
  @num = params[:number]
  @phrase = params[:phrase]

  "#{Array.new(@num.to_i, @phrase).join(' ')}"
end 
# and returns that phrase in a single string the number of times given.

get '/say/:word1/:word2/:word3/:word4/:word5' do
  @word1 = params[:word1]
  @word2 = params[:word2]
  @word3 = params[:word3]
  @word4 = params[:word4]
  @word5 = params[:word5]
  "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
end 

get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    if @op == "add"
      "#{@num1.to_i + @num2.to_i}"
    elsif @op == "subtract"
      "#{@num1.to_i - @num2.to_i}"
    elsif @op == "divide"
      "#{@num1.to_i / @num2.to_i}"
    else 
      "#{@num1.to_i * @num2.to_i}"
    end 
  end 
end