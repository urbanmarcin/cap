require 'sinatra'

class HelloWorldApp < Sinatra::Base
  get '/hello' do
    'change drugi' + request.env.to_s
  end
end
