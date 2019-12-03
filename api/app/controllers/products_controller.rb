class ProductsController < ApplicationController
  def index
    render json: Product.all
  end

  def create
    Product.create(params.require(:product).permit(:name, :description, :price))
  end
end
