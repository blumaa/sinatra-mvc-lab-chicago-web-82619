require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/' do

    erb :user_input
  end

  post '/piglatinize' do
    p params
    # binding.pry

    @piglatin = PigLatinizer.new
    @piglatin = @piglatin.piglatinize(params[:user_phrase])
    erb :piglatinize
  end
end
