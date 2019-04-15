class WelcomeController < ApplicationController
  def index

    
    # ARMAZENA COOKIE (NAVEGADOR)
    cookies[:curso] = "Curso de Ruby on Rails - Jackson Pires [COOKIE]"

    # ARMAZENA SESSION (SESSION)
    session[:curso] = "Curso de Ruby on Rails - Jackson Pires [SESSION]"

    @var_sessao = "var_sessao"
    @parametro_url = params[:nome]
  end
end
