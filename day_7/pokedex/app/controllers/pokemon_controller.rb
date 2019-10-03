class PokemonController < ApplicationController
    def index
    end

    def create
        name = params["pokemon_name"]
        url = "https://pokeapi.co/api/v2/pokemon/#{name}"
        gem_plus_url = RestClient.get(url)
        @results = JSON.parse(gem_plus_url.body)
        @sprite_img=@results["sprites"]["front_default"]
        if @results["sprites"]["front_shiny"]
            @sprite_img2 = @results["sprites"]["front_shiny"]
        end
        if @results["sprites"]["front_female"]
            @sprite_img3 = @results["sprites"]["front_shiny"]
        end
        @type = @results["types"][0]["type"]["name"]
        if @results["types"][1]
            @type2 = @results["types"][1]["type"]["name"]
        end
    end
    
end
