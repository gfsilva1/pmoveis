class EletrosController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show , :new, :create]
  def index
    @eletros = Eletro.all
  end

  def show
    @eletro = Eletro.find(params[:id])
  end

  def new
    @eletro = Eletro.new
  end

  def create
    @eletro = Eletro.new(eletro_params)
    @eletro.save

    # no need for app/views/restaurants/create.html.erb
    redirect_to eletro_path(@eletro)
  end

  private

  def eletro_params
    params.require(:eletro).permit(:nome, :valor)
  end

end
