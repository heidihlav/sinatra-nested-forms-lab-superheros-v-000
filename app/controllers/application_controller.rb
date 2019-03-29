require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      erb :team
      @hero_name = []
      @hero_power = []
      @hero_bio = []
      
      params[:team][:members].each.with_index do |value, index|
        @hero_name << value[:name]
        @hero_power << value[:power]
        @hero_bio << value[:bio]
      end

    end


end
