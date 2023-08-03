class ProductController < ApplicationController
  

  def index
    @products = Product.all
    render template: "products/index"
  end

  def show
    
    @product = Product.find_by(id: params[:id])
    
    @product = @product || Product.first
    render template: "products/show"
  end

  def create

    @product = Product.new(name: params[:name],
       price: params[:price],
        image_url: params[:image_url], 
        description: params[:description])

      @product.save
      render template: "products/show"
    end


    def update
      @product = Product.find_by(id: params[:id])
      @product.name = params[:name] 
      @product.price = params[:price]
      @product.image_url = params[:image_url]
      @product.description = params[:description]
      @product.save
      
      render template: "products/show"
    end

    def destroy
      @product = Product.find_by(id: params[:id])
      #find the product
      #remove the product
      render json: {message: "product removed"}
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
