class BodegasController < ApplicationController
  before_action :set_bodega, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @bodegas = Bodega.all
    respond_with(@bodegas)
  end

  def show
    respond_with(@bodega)
  end

  def new
    @bodega = Bodega.new
    respond_with(@bodega)
  end

  def edit
  end

  def create
    @bodega = Bodega.new(bodega_params)
    @bodega.save
    respond_with(@bodega)
  end

  def update
    @bodega.update(bodega_params)
    respond_with(@bodega)
  end

  def destroy
    @bodega.destroy
    respond_with(@bodega)
  end

  private
    def set_bodega
      @bodega = Bodega.find(params[:id])
    end

    def bodega_params
      params.require(:bodega).permit(:columna, :fila, :producto_id)
    end
end
