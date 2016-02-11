require 'sinatra'

class DanielsDemo < Sinatra::Base
    get "/" do
        # "Hello Daniel and Brian"
        erb :home
    end

    get "/pineapple" do
        @name="Ivan"
        erb :pineapple
    end

    get "/profile/:user/:sex" do
        @shepherd = params[:user]
        @gender = params[:sex]
        erb :profilePage
    end

    get "/cookies" do
        if loggedIn?
            # "Chocolate Chip, Almond, Raisin Cookies"
            "Show profile page"
        else
            # erb :pineapple
            "Show Login Page"
        end

    end

    def loggedIn?
        false
    end
end