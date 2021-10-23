class CozinhaController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :cozinha ]

  def cozinha
  end
end
