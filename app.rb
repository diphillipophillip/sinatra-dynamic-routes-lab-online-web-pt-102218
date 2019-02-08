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
    
  end 
  
  
end