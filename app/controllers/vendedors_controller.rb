class VendedorsController < ApplicationController
  before_action :set_vendedor, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @vendedors = Vendedor.all
    respond_with(@vendedors)
  end

  def show
    respond_with(@vendedor)
  end

  def new
    @vendedor = Vendedor.new
    respond_with(@vendedor)
  end

  def edit
  end

  def create
    @vendedor = Vendedor.new(vendedor_params)
    @vendedor.save
    respond_with(@vendedor)
  end

  def update
    @vendedor.update(vendedor_params)
    respond_with(@vendedor)
  end

  def destroy
    @vendedor.destroy
    respond_with(@vendedor)
  end

  private
    def set_vendedor
      @vendedor = Vendedor.find(params[:id])
    end

    def vendedor_params
      params.require(:vendedor).permit(:nombre, :apellido, :codigovendedor)
    end
end
