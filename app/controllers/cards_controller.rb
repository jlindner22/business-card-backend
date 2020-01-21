class CardsController < ApplicationController

    def index
        cards = Card.all
        render json: cards, except:[:created_at, :updated_at]
    end

    def create
        card = Card.create(card_params)
        render json: card, except: [:created_at, :updated_at]
    end
    
    private
    
    def card_params
        params.require(:card).permit(:name, :title, :company, :phone_number, :email, :linkedin, :website, :address, :logo, :style)
    end
end

