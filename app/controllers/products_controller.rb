class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @products = Product.all
    if params[:query].present?
      @products = Product.where(category: params[:query])
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(products_params)
    @product.user = current_user
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])

  end

#   def update
#     @product = Product.find(params[:id])
#     @product.update(product_params)
#   end

#   private

#   def product_params
#     params.required(:product).permit(:gender, :describtion, :price, :category, :photo)
#   end

#   def set_product
#     @product = Product.find(params[:id])
#   end
end
