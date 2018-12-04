# frozen_string_literal: true

class CoinsController < ApplicationController
  # SE NAO COLOCAR, O DEFAULT E: application.html.erb
  layout 'layout_adm'

  # EXECUTADO ANTES DA ACAO
  before_action :set_coin, only: %i[show edit update destroy]
  before_action :set_mining_type_options, only: %i[new create edit update]

  def index
    # VARIAVEL DE INTANCIA/SESSAO
    @coins = Coin.all
  end

  def show; end

  def new
    @coin = Coin.new
  end

  def edit; end

  def create
    @coin = Coin.new(coin_params)

    respond_to do |format|
      if @coin.save
        format.html { redirect_to @coin, notice: 'Coin was successfully created.' }
        format.json { render :show, status: :created, location: @coin }
      else
        format.html { render :new }
        format.json { render json: @coin.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @coin.update(coin_params)
        format.html { redirect_to @coin, notice: 'Coin was successfully updated.' }
        format.json { render :show, status: :ok, location: @coin }
      else
        format.html { render :edit }
        format.json { render json: @coin.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @coin.destroy
    respond_to do |format|
      format.html { redirect_to coins_url, notice: 'Coin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_mining_type_options
    @mining_type_options = MiningType.all.pluck(:description, :id)
  end

  # CALLBACKS: CONFIGURACOES COMUNS OU RESTRIÇOES ENTRE ACOES
  def set_coin
    @coin = Coin.find(params[:id])
  end

  # RECEBENDO APENAS OS PARAMETROS QUE EU NECESSITO
  def coin_params
    params.require(:coin).permit(:description, :acronym, :url_image, :mining_type_id)
  end
end
