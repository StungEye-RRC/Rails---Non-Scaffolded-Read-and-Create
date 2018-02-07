class ProductsController < ApplicationController
  # GET /products
  # Should load and then display all products.
  def index
    @products = Product.all
  end
  # Automatically load up app/views/products/index.html.erb

  # GET /products/:id
  # Should load the product with the specified id.
  def show
    @product = Product.find(params[:id])
  end
  # Automatically load up app/views/products/show.html.erb

  # GET /products/new
  # Should display a new product form that POSTs to create.
  def new
    @product = Product.new
  end
  # Automatically load up app/views/products/new.html.erb

  def create
    @product = Product.new(product_params)
    if @product.save # Is the product valid?
      # Product was saved because it is valid.
      redirect_to product_path(@product) # Load the show action for this new product
    else
      # Validation errors!
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :stock_quantity)
  end
end
