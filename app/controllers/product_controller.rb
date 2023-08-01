class ProductController < ApplicationController
  

  #def new_product
    #render json: Product.all
  #end

  #def product_1
    #render json: product = Product.find_by(name: "laptop")
  #end

  #def product_2
   #render json: product = Product.find_by(name: "iphone")
  #end

  #def product_3
    #render json: product = Product.find_by(name: "television")
  #end

  def index
    @product = Product.all
    render template: "contacts/show"
  end
    
 
end
