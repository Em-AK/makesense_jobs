Makesensejobs::Application.routes.draw do
  devise_for :recruiters, controllers: { registrations: 'recruiters/registrations', passwords: 'recruiters/passwords' }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # static pages
  get 'jobs/oops' => 'pages#oops'
  # You can have the root of your site routed with "root"
  root 'jobs#index'
  # jobs routes
  get 'jobs' => 'jobs#index', as: :jobs
  get 'jobs/new' => 'jobs#new', as: :new_job
  get 'jobs/new/preview' => 'jobs#preview', as: :preview_job
  get 'jobs/new/publish' => 'jobs#publish', as: :publish_job
  get 'jobs/:id' => 'jobs#show', as: :job
  post 'jobs' => 'jobs#create'
  patch 'jobs/new' => 'jobs#update'
  #subscriber path
  resources :subscribers

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
