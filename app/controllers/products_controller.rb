class ProductsController < ApplicationController

  def index
    puts "---- index ----"
    @products = Product.all
  end

  def new
    puts "---- new ----"
    @product = Product.new
  end

  def create
    puts "---- create ----"
    @product = Product.new(product_params)

    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    puts "---- edit ----"
    @product = Product.find(params[:id])
  end

  def update
    puts "---- update ----"
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    puts "---- destroy ----"
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price)
  end

end
