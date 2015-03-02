class CartController < ApplicationController

  def index
    @cart = Cart.find session[:cart_id]
  end

  # def update
  #   @cart = Cart.find session[:cart_id]
  #   @cart_item = @cart.cart_items.find params[:id]
  #   @cart_item.update params.require(:cart_item).permit(:quantity)
  #   @cart_item.destroy if @cart_item.quantity == 0
  #   redirect_to cart_path
  # end

  def add
    @product = Product.find params[:product_id]
    cart_id = session[:cart_id]
    if cart_id.nil?
      cart = Cart.create
      session[:cart_id] = cart.id
    else
      cart = Cart.find cart_id
    end

    cart_item = cart.cart_items.find_by product_id: @product.id
    if cart_item.present?
      cart_item.update quantity: (cart_item.quantity + 1)
    else
      cart.cart_items.create product: @product
    end

  end
end
