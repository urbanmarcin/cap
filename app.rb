require 'sinatra'

class HelloWorldApp < Sinatra::Base
  get '/hello' do
    request.env.to_s
  end
end
