require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
        erb :index
    end

    post '/puppy' do
        @puppy = Puppy.new(params)

        erb :puppy
    end

    get '/new' do
        erb :new
    end
end
