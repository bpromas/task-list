class ListsController < ApplicationController
    def index
        @lists = List.all
    end
    
    def show
        @list = List.find(params[:id])
    end

    def new
        @list = List.new()
    end

    def edit
        @list = List.find(params[:id])
    end

    def create
        @list = current_user.lists.build(list_params)
        @list.user = current_user
        p "@list, #{@list.inspect}"
        if @list.save
            redirect_to lists_path
        else
            render 'new'
        end
    end

    def update
        @list = List.find(params[:id])
        if @list.update(list_params)
            redirect_to lists_path
            #TO-DO "renderizar edit com mensagem de sucesso"
        else
            render 'edit'
        end
    end

    def destroy
        @list = List.find(params[:id])
        @list.destroy
        redirect_to lists_path
    end

    def add_favorite
        Favorite.create(list_id: params[:list_id], user: current_user)
        redirect_to list_path(params[:list_id])
    end

    def remove_favorite
        Favorite.find_by(list_id: params[:list_id], user: current_user).destroy
        redirect_to list_path(params[:list_id])
    end

private
    def list_params
        params.require(:list).permit(:title, :public)
    end
end
