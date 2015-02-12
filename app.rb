require 'sinatra/base'
require 'sinatra/assetpack'
require 'haml'
require 'sass'

class App < Sinatra::Base
  register Sinatra::AssetPack
  assets do
    css :application, [
          "/css/app.css"
        ]
    css_compression :sass
  end
  
  get "/" do
    haml :index
  end

  get "/rural" do
    haml :rural
  end

  run! if app_file == $0
end
