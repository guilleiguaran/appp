require "sinatra"

class App < Sinatra::Base
  get "/" do
    erb :index
  end

  post "/classifications" do
    @classifications = params[:classifications].to_i
    erb :classifications
  end

  post "/permutations" do
    erb :permutations
  end
end
