require "sinatra"
enable :sessions

get '/' do
    erb :pizza_toppings
end

post '/comfirmation' do
    session[:meat] = params[:meat]
    session[:cheese] = params[:cheese]
    session[:sauce] = params[:sauce]
    session[:crust] = params[:crust]
    redirect '/comfirmation'
    end

get '/comfirmation' do
erb :comfirmation, locals:{meat:session[:meat],cheese:session[:cheese],sauce:session[:sauce],crust:session[:crust]}
    end

post '/checkout' do
   session[:final_topping] = params[:final_topping]
redirect '/checkout'
end

get '/checkout' do
   erb :checkout, local:{final_topping:session[:final_topping]}
   end