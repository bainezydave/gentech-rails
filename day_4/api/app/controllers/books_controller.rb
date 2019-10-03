class BooksController < ApplicationController

    skip_before_action :verify_authenticity_token
    before_action :setup_data

    def index
        render json: @data
    end

    #Show a single book
    def show
        puts params

        id = params[:id].to_i
        response = @data[id]
        render json: response
    end

    #Create a new book
    def create
        # puts params

        title = params[:title]
        author = params[:author]

        book = {:title => title, :author => author}

        @data << book

        puts @data

        render json:@data

    end

    #Update a book
    def update
        puts params

        id = params[:id].to_i

        @data[id][:title] = params[:title]
        @data[id][:author] = params[:author]

        render json:@data

    end

    #Remove a book
    def destroy
        puts params

        id = params[:id].to_i

        @data.delete_at(id)

        render json:@data

    end

    private
    def setup_data
        @data = [
            { title: "Harry Potter", author: "J.K Rowling" },
            { title: "Name of the wind", author: "Patrick Rothfuss" }
        ]
    end

end
