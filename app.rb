require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do 
        erb :user_input
    end

    post '/piglatinize' do
        new_pig = PigLatinizer.new
        new_pig.piglatinize(params[:user_phrase])
    end
    

end