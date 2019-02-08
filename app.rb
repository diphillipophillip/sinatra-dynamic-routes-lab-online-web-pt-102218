require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @name = @params[:name]
    "#{@name}".reverse 
  end 
  
  get '/square/:number' do 
    @number = @params[:number]
    @second_num = "#{@number}".to_i ** 2 
    @second_num.to_s
  end 
  
  get '/say/:number/:phrase' do 
    @phrase = @params[:phrase]
    @number = @params[:number]
    @phrase * @number.to_i
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = @params[:word1]
    @word2 = @params[:word2]
    @word3 = @params[:word3]
    @word4 = @params[:word4]
    @word5 = @params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end 
  
  get '/:operation/:number1/:number2' do 
    @operation = @params[:operation]
    @number1 = @params[:number1]
    @number2 = @params[:number2]
    if @operation == "add"
      answer = (@number1 + @number2)
      elsif @operation == "subtract"
      @number1 - @number2
      elsif @operation == "multiply"
      @number1 * @number2
      elsif @operation == "divide"
      @number1 / @number2
    end 
  end
    
  
  
end