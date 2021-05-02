require_relative 'config/environment'

class App < Sinatra::Base
    # Write your code here!

    get '/reversename/:name' do
       @u_name = params[:name]
       "#{@u_name.reverse}"
    end

    get '/square/:number' do
       num = params[:number].to_i
       "#{num * num}"
    end

    get '/say/:number/:phrase' do
       num = params[:number].to_i
       p = params[:phrase]
       "#{p * num}"
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
       word_1 = params[:word1]
       word_2 = params[:word2]
       word_3 = params[:word3]
       word_4 = params[:word4]
       word_5 = params[:word5]
       "#{word_1} #{word_2} #{word_3} #{word_4} #{word_5}."
    end

    get '/:operation/:number1/:number2' do 
      number1 = params[:number1].to_i
      number2 = params[:number2].to_i
  
      answer = 'Unable to perform this operation'
  
      case params[:operation]
      when 'add'
        answer = (number1 + number2).to_s
      when 'subtract'
        answer = (number1 - number2).to_s
      when 'multiply'
        answer = (number1 * number2).to_s
      when 'divide'
        answer = (number1 / number2).to_s
      end
    end

end