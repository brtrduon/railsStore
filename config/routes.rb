Rails.application.routes.draw do
  get '/' => 'users#index'
  
  get 'register' => 'users#register'

  post 'register' => 'sessions#register'

  get 'login' => 'users#login'

  post 'login' => 'sessions#login'

  get 'help' => 'users#help'

  get 'reset' => 'users#reset'

  get 'home' => 'stores#home'

  get 'fakehelp' => 'stores#fakehelp'

  get 'morefakehelp' => 'stores#morefakehelp'

  get 'evenmoarfakehelp' => 'stores#evenmoarfakehelp'

  get 'godzillahelp' => 'stores#godzillahelp'

  get 'crackhelp' => 'stores#crackhelp'

  get 'morecrackhelp' => 'stores#morecrackhelp'

  get 'fruitfromcrackpipe' => 'stores#fruitfromcrackpipe'

  get 'untoldgarbage' => 'stores#untoldgarbage'

  get 'untitledhelp' => 'stores#untitledhelp'

  get 'krakenhelp' => 'stores#krakenhelp'

  get 'cryinghelp' => 'stores#cryinghelp'

  get 'cart' => 'carts#cart'

  get 'store' => 'stores#store'

  get 'store/add' => 'stores#add'

  post 'store/add' => 'stores#create'

  get 'store/:id/show' => 'stores#show'

  post 'addtocart/:id' => 'carts#addtocart'

  get 'checkout' => 'carts#checkout'

  post 'delete/:id' => 'carts#delete'
  
  post 'checkout/:id' => 'carts#giveMoney'

  post 'removeitem/:id' => 'stores#removeitem'

  get 'edit/:id' => 'stores#edit'

  post 'edit/:id' => 'stores#update'



  get 'sessions/:id' => 'sessions#destroy'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
