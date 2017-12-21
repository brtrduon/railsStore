class CartsController < ApplicationController

    def addtocart
        Cart.create cart_params
        redirect_to '/home'
    end

    def cart
        @current_user = current_user
        @cart = Cart.where(user_id: current_user.id)
    end

    def checkout
        @current_user = current_user
        @cart = Cart.where(user_id: current_user.id)
    end

    def giveMoney
        @cart = Cart.find(user_id: current_user.id)

    end


    private
    def cart_params
        params.require(:cart).permit(:store_id).merge(user: current_user)
    end
end
