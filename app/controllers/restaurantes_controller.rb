class RestaurantesController < ApplicationController

        def index
            @restaurantes = Restaurante.order("nome")
        end

        def show
            @restaurantes = Restaurante.find(params[:id])
        end

        def new
            @restaurantes = Restaurante.new
        end

        def create
            @restaurantes = Restaurante.new(params[:restaurante])
            if @restaurante.save
                redirect_to(action: "show", id: @restaurante )
            else
                render action: "new"
            end
        end

        def edit
            @restaurantes = Restaurante.find(params[:id])
        end

        def update
            @restaurantes = Restaurante.find(params[:id])
            if @restaurante.update_attributes(params[:restaurante])
                redirect_to(action: "show", id: @restaurante)
            else
                render action: "edit"
            end
        end

        def destroy
            @restaurantes = Restaurante.find(parms[:id])
            @restaurante.destroy
            redirect_to(action: "index")
        end


end
