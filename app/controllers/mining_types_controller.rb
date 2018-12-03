# frozen_string_literal: true

class MiningTypesController < ApplicationController
  layout 'layout_adm'

  before_action :set_mining_type, only: %i[show edit update destroy]

  def index
    @mining_types = MiningType.all
  end

  def show; end

  def new
    @mining_type = MiningType.new
  end

  def edit; end

  def create
    @mining_type = MiningType.new(mining_type_params)

    respond_to do |format|
      if @mining_type.save
        format.html { redirect_to @mining_type, notice: 'Mining type was successfully created.' }
        format.json { render :show, status: :created, location: @mining_type }
      else
        format.html { render :new }
        format.json { render json: @mining_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @mining_type.update(mining_type_params)
        format.html { redirect_to @mining_type, notice: 'Mining type was successfully updated.' }
        format.json { render :show, status: :ok, location: @mining_type }
      else
        format.html { render :edit }
        format.json { render json: @mining_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @mining_type.destroy
    respond_to do |format|
      format.html { redirect_to mining_types_url, notice: 'Mining type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_mining_type
    @mining_type = MiningType.find(params[:id])
  end

  def mining_type_params
    params.require(:mining_type).permit(:name, :acronym)
  end
end
