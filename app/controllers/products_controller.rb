class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.create(product_params)

    redirect_to products_path
  end

  def new
    @product = Product.new
  end

  def edit
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :image)
  end
end
