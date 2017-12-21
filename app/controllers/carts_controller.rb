class CartsController < ApplicationController

    def addtocart
        Cart.create cart_params
        @item = Store.find_by(id: params[:id])
            @item.quantity -= 1
            @item.save
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

    def delete
        @cart = Cart.find_by(id: params[:id])
        @item = Store.find_by(id: @cart.store_id)
            @item.quantity += 1
            @item.save
        @cart = Cart.delete(params[:id])
        redirect_to '/cart'
    end

    def giveMoney
        @current_user = current_user
        @cart = Cart.delete_all(user_id: current_user.id)
        redirect_to '/home'
    end


    private
    def cart_params
        params.require(:cart).permit(:store_id).merge(user: current_user)
    end
end
