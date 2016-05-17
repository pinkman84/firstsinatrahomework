require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pry-byebug'
require_relative './model/address.rb'
require_relative './model/wordformatter.rb'
require 'json'



get '/'do
  erb :home
end

get '/address' do
  content_type( :json )
 
  results ={
  address: '3 ARGYLE HOUSE',
  building: 'CODEBASE',
  postcode: WordFormatter.new('e13 zqf').make_upcase,
  phone: '0131558030'
}
return results.to_json
end

get '/camelcase/:string' do
  @result = WordFormatter.new(params[:string])
  return @result.make_camelcase
  erb :camelcase
end

