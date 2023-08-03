Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/products" => "product#index"
  get "/products/:id" => "product#show"
  post "/products" => "product#create"
  patch "/products/:id" => "product#update"
  delete "/products/:id" => "product#destroy"
  #get "/product_2" => "product", action: "product_2"
  #get "/product_3" => "product", action: "product_3"
  
  #get singularproduct:id

  #(id:params['id'])
end
