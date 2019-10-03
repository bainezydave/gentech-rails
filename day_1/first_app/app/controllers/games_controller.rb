class GamesController < ApplicationController

    def page
        @games = ["Global Thermonuclear War", "Tic-Tac-Toe", "Poker", "Chess"]
    end

end