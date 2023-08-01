Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #get "/product" => "product", action: "new_product"
  #get "/product_1" => "product", action: "product_1"
  #get "/product_2" => "product", action: "product_2"
  #get "/product_3" => "product", action: "product_3"
  
  get "/products" => "product#index"
end
