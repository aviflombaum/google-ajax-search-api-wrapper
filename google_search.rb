require 'rubygems'
require 'httparty'

class GoogleSearch
  include HTTParty
  format :json
  base_uri 'http://ajax.googleapis.com/ajax/services'
  default_params :output => 'json', :v => "1.0"

  def self.find(query)
    get('/search/web', :query => {:q => query})
  end
end