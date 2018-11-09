class WelcomeController < ApplicationController
  def index
    @var_sessao = "var_sessao"
    @parametro_url = params[:nome]
  end
end
