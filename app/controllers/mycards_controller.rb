class MycardsController < ApplicationController

    def index
        mycards = Mycard.all
        render json: mycards, except:[:created_at, :updated_at]
    end

    def create
        mycard = Mycard.create(mycard_params)
        render json: mycard, except: [:created_at, :updated_at]
    end
    
    private
    
    def mycard_params
        params.require(:mycard).permit(:name, :title, :company, :phone_number, :email, :linkedin, :website, :address, :logo, :style)
    end
end
