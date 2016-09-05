require 'sinatra/base'
require 'rubygems'
require 'data_mapper'

class Book_Mark < Sinatra::Base
  get '/' do
    'Hello book_mark!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
