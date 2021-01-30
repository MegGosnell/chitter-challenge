require 'sinatra/base'
require './lib/peeps'

class Chitter < Sinatra::Base
    get '/' do 
        'Welcome to Chitter!'
    end 

    get '/peeps/new' do 
        @peeps = Peep.all
        erb :index
    end 

    post '/peeps' do 
        params[:peep]
    end 

    get '/peeps/new' do 
        erb :index 
    end 
  
    
    run! if app_file == $0
end 
