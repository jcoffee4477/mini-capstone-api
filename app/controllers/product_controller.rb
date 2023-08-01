class ProductController < ApplicationController
  

  def index
    @products = Product.all
    render template: "products/index"
  end

  def show
    p params[id:]
    @product = product.find_by(id: params[:id])
    render template: "products/show"
  end

  def create
    @product = Product.new(name: params[:input_name],
       price: params[:input_price],
        image_url: params[:input_image_url], 
        description: params[:input_description])

      @product.save
      render template: "products/show"
    end


    def update
      @product = Product.find_by(id: params[:id])
      @product.name = params[:input_name]
      @product.price = params[:input_price]
      @product.image_url = params[:input_image_url]
      @product.description = params[:input_description]
      @product.save
      
      render template: "products/show"
    end


  

  #name: params[:input_name]
    

  #def product_2
   #render json: product = Product.find_by(name: "iphone")
  #end

  #def product_3
    #render json: product = Product.find_by(name: "television")
  #end

  #def index
    #@product = Product.all
    #render template: "contacts/show"
  #end
    
 
end
