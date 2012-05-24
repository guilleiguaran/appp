require "nancy"

class App < Nancy::Base
  include Nancy::Render

  get "/" do
    render("views/index.erb")
  end

  post "/classifications" do
    @classifications = params["classifications"].to_i
    render("views/classifications.erb")
  end

  post "/permutations" do
    render("views/permutations.erb")
  end
end
