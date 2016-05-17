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
  postcode: 'e13 zqf'.upcase,
  phone: '0131558030'
}
return results.to_json
end

get '/camelcase/:string' do
  result = WordFormatter.new('code clan')
  return result.make_camelcase(params[:string])

end

