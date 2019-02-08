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
    binding.pry 
  end 
  
  
end