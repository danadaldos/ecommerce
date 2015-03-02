class ProductsController < ApplicationController
  def index
    if params[:search_products].present?
      @products = Product.search_products(params[:search_products])
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find params[:id]
  end

  def autocomplete
    products = Product.search_products(params[:query])
    render json: products
  end
end
