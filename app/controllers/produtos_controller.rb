class ProdutosController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index, :show, :new, :create, :destroy]
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

  def destroy
    @produto = Produto.find(params[:id])
    @produto.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to produtos_path
  end

  private

  def produto_params
    params.require(:produto).permit(:nome, :valor, :tipo, :photo)
  end


end
