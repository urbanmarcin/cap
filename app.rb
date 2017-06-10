require 'sinatra'

class HelloWorldApp < Sinatra::Base
  get '/hello' do
    'change' + request.env.to_s
  end
end
