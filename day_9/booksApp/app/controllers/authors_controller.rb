class AuthorsController < ApplicationController
    def index
        @authors = Author.all
    end

    def create
    end
end
