class HomeController < ApplicationController
    def index
        @title= 'Hello World!'
        @subTitle= 'I am learning Rails!'
    end
end
