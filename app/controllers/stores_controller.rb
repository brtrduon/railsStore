class StoresController < ApplicationController

    def home
        @current_user = current_user
        @store = Store.where.not(user_id: current_user.id)
    end

    def store
        @current_user = current_user
        @store = Store.where(user_id: current_user.id)
    end

    def add
        @current_user = current_user
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
        @current_user = current_user
        @item = Store.where(id: params[:id])
    end

    def edit
        @current_user = current_user
        @item = Store.find_by(id: params[:id])
    end

    def update
        @item = Store.find(params[:id])
        @item.update(store_params)
        if @item.valid?
            @item.save
            redirect_to '/store'
        else
            flash[:errors] = @item.errors.full_messages
            redirect_to :back
        end
    end

    def removeitem
        @item = Store.find_by(id: params[:id])
        @item.delete
        redirect_to '/store'
    end


    private
    def store_params
        params.require(:store).permit(:name, :price, :quantity).merge(user: current_user)
    end
    
end
