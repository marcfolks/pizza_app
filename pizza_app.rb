require "sinatra"

get '/' do
    erb :pizza_toppings
end

post '/comfirmation' do
    session[:meat] = params[:meat]
    session[:cheese] = params[:cheese]
    session[:sauce] = params[:sauce]
    session[:crust] = params[:crust]
    session[:topping]= params[:topping]
   redirect '/comfirmation?meat='+ '&meat='+ cheese + '&session=' + sauce + '&sauce=' + crust + '&crust='
   end

get '/comfirmation' do
    session[:meat] = params[:meat]
    session[:cheese] = params[:cheese]
    session[:sauce] = params[:sauce]
    session[:crust] = params[:crust]
erb :comfirmation, :locals => {session[:meat] => meat,:cheese => cheese,:sauce => sauce,:crust => crust,}
    end

post '/checkout' do
   final_meat = params[:final_meat]
   final_cheese = params[:final_cheese]
   final_sauce = params[:final_sauce]
   final_crust = params[:final_crust]
redirect '/checkout?final_meat'+ '&final_meat='+ final_cheese + '&final_cheese=' + final_sauce + '&final_sauce=' + final_crust + '&final_crust=' 
end
get '/checkout' do
   erb :checkout, :locals =>{:final_meat=>final_meat,:final_cheese=>final_cheese,:final_sauce=>final_sauce,:final_crust=>final_crust}
   end