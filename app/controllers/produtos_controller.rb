class ProdutosController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index, :show, :new, :create]
  def index
    @produtos=Produto.all
  end

  def show
    @produto=Produto.find(params[:id])
  end

  def new
    @produto = Produto.new
  end

  def create
    @produto = Produto.new(produto_params)
    @produto.save

    # no need for app/views/restaurants/create.html.erb
    redirect_to produto_path(@produto)
  end

  private

  def produto_params
    params.require(:produto).permit(:nome, :valor, :tipo, :photo)
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to restaurants_path
  end
end
