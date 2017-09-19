require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params["team"])
      @team.new_member(params["member1_name"], params["member1_power"], params["member1_bio"])
      @team.new_member(params["member2_name"], params["member2_power"], params["member2_bio"])
      @team.new_member(params["member3_name"], params["member3_power"], params["member3_bio"])
      erb :team
    end

end
