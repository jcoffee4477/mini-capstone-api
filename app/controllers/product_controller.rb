class ProductController < ApplicationController
  

  def index
    @products = Product.all
    render template: "products/index"
  end

  def show
    
    @product = Product.find_by(id: params[:id])
    
    render :show
  end

  def create
    
    @product = Product.new(name: params[:name],
       price: params[:price],
        image_url: params[:image_url], 
        description: params[:description])
    
     if @product.save
      render template: "products/show"
     else
      render json: {errors: @product.errors.full_message}
     end
    end


    def update
      @product = Product.find_by(id: params[:id])
      @product.name = params[:name] 
      @product.price = params[:price]
      @product.image_url = params[:image_url]
      @product.description = params[:description]
      
      if @product.save
      render template: "products/show"
      else
        render json: {errors: @product.errors.full_message}
      end
    end

    def destroy
      @product = Product.find_by(id: params[:id])
      @game.destroy
      render json: {message: "product removed"}
    end


  

  #allow multiple images
  #different image ids for each product

 
end
