require "json"
require "http"
require "optparse"
require 'open-uri'

class CoffeeController < ApplicationController

    API_KEY = 'Heo2WSnGzYegfOPTqvE_muiHm2N7iK4wBG6xBegVqq90k82NHseySYSDaCEPlMTBpfHEsBlWN73A6wpQ4T5OXIzdR7nc9sR2fBsKWcp7MVRGFg7hqhJLpHOP2pjfWnYx'
    CLIENT_ID = 'xlJWfm761-qDyWK2fDUnCA'

    API_HOST = "https://api.yelp.com"
    SEARCH_PATH = "/v3/businesses/search"
    BUSINESS_PATH = "/v3/businesses/"



    def index
        puts "___________________________________"
        @coffee = HTTP.auth("Bearer #{API_KEY}").get('https://api.yelp.com/v3/businesses/search?term=coffee&location=94580&limit=4')

    end


end
