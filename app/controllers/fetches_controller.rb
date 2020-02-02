class FetchesController < ApplicationController

    def test_gifs
        key = "eZPphmLONgJ6GnBjnTwqZKeS9xRrAXVX"

        response = RestClient.get("https://api.giphy.com/v1/gifs/search?q=ryan+gosling&api_key=#{key}&limit=5")

        render json: response
    end

    def get_gifs
        key = "eZPphmLONgJ6GnBjnTwqZKeS9xRrAXVX"
        search = params[:term]

        response = RestClient.get("https://api.giphy.com/v1/gifs/search?api_key=#{key}&q=#{search}&limit=20&offset=0&rating=G&lang=en")

        render json: response
    end

end
