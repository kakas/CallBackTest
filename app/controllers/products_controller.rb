class ProductsController < ApplicationController

  def index
    puts "---- index ----"
    @products = Product.all
    puts "---- index ----"
  end

  def new
    puts "---- new ----"
    @product = Product.new
  end

  def create
    puts "---- create ----"
    @product = Product.new(product_params)
    puts "---- create2 ----"

    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    puts "---- edit find----"
    @product = Product.find(params[:id])
    puts "---- edit all----"
    @products = Product.all
    puts "---- edit first----"
    @product_1 = Product.first
    puts "---- edit last----"
    @product_9 = Product.last
    puts "---- edit find_by_title ----"
    @product_n = Product.find_by_title("dd")
  end

  def update
    puts "---- update ----"
    @product = Product.find(params[:id])
    puts "---- update2 ----"

    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    puts "---- destroy ----"
    @product = Product.find(params[:id])
    puts "---- destroy2 ----"
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price)
  end

end
