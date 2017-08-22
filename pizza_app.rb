require "sinatra"

get '/' do
    erb :pizza_toppings
end

post '/comfirmation' do
    topping = params[:topping]
    erb :comfirmation, :locals => {:topping=>topping}
    end

post '/checkout' do
    final_topping = params[:final_topping]
    erb :checkout, :locals =>{:}