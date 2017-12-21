class StoresController < ApplicationController

    def home
        @current_user = current_user
        @store = Store.where.not(user_id: current_user.id)
    end

    def store
        @store = Store.where(user_id: current_user.id)
    end

    def add
    end

    def create
        store = Store.new store_params
        if store.save
            redirect_to '/store'
        else
            flash[:errors] = store.errors.full_messages
            redirect_to '/store/add'
        end
    end

    def show
        @item = Store.where(id: params[:id])
    end


    private
    def store_params
        params.require(:store).permit(:name, :price, :quantity).merge(user: current_user)
    end
    
end
