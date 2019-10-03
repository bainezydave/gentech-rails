class BooksController < ApplicationController
    before_action :set_book, only: [:show, :edit, :update, :destroy]
    def index
        @books = Book.all
    end

    def create
        Book.create(
            title: params["book_title"], 
            genre: params["book_genre"], 
            year_released: params["book_year"],
            author_id: Author.find_by( first_name: params["book_author"] ).id
        )
    end

    def update
    end

    def destroy
        @book.destroy
        respond_to do |format|
            # format.html { redirect_to pokemons_url, notice: 'Book was successfully deleted.' }
            format.json { head :no_content }
        end
    end
end
