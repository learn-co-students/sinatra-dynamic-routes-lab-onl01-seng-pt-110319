require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end
  # Write your code here!
  get '/square/:number' do
    @num = params[:number].to_i * params[:number].to_i
    @ans = @num.to_s
    "#{@ans}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phr = params[:phrase]
    @phr * @num.to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do

    @new_word = []
    @new_word << @word1 = params[:word1]
    @new_word << @word2 = params[:word2]
    @new_word << @word3 = params[:word3]
    @new_word << @word4 = params[:word4]
    @new_word << @word5 = params[:word5]

    @new_word = @new_word.join(" ")
    "#{@new_word}."
  end

  get '/:operation/:number1/:number2' do

    @opr = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case @opr
    when "add"
      "#{@num1 + @num2}"
    when "subtract"
      "#{@num1 - @num2}"
    when "multiply"
      "#{@num1 * @num2}"
    when "divide"
      "#{@num1 / @num2}"
    end
  end

end
