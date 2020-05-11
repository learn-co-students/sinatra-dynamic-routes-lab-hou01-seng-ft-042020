require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

    get '/reversename/:name' do
      #accepts a name and renders the name backwards
      @name = params[:name]
      "#{@name.reverse}"
    end

    get '/square/:number' do
      #accepts a number and returns the square route of that number
      @number = params[:number].to_i * params[:number].to_i
      "#{@number}"
    end

    get '/say/:number/:phrase' do
    #accepts a num and phrase and returns that phrae in a single string, the number of times given
      answer = ''
      params[:number].to_i.times do
        answer += params[:phrase]
      end
      answer
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      #accepts five words and returns a string containing them all
      @word1 = params[:word1]
      @word2 = params[:word2]
      @word3 = params[:word3]
      @word4 = params[:word4]
      @word5 = params[:word5]
      "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    end

    get '/:operation/:number1/:number2' do
      @op = params[:operation]
      @num1 = params[:number1].to_i
      @num2 = params[:number2].to_i
      answer = "0"

      if @op == "add"
        answer = (@num1 + @num2).to_s
      elsif @op == "subtract"
        answer = (@num1 - @num2).to_s
      elsif @op == "multiply"
        answer = (@num1 * @num2).to_s
      elsif @op == "divide"
        answer = (@num1 / @num2).to_s
      else
        answer = "wrong"
      end
      answer
    end





end