class PagesController < ApplicationController

    before_action :before_data
    after_action :after_data

    def before_data
        puts "Executed the before Data method."
    end

    def after_data
        puts "Executed the after Data method."
    end


    def home
    end

    def data
        puts "Look here!"
        puts params
        # render :plain "Working Text"
        # render :html "<h1>Working HTML</h1>".html_safe
        # render "pages/contact"
        # render "elephant/giraffe"

        redirect_to root_path
    end

end
