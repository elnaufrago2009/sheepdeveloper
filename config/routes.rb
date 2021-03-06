Sheepdeveloper::Application.routes.draw do
  namespace :content do
    resources :pruebas
  end

  get "sliders/index"
  get "sliders/new"
  get "sliders/edit"
  get "sliders/view"
  get "admins/index"
  get "mains/index"
  #get "pages/index"
  #get "main/index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root to: "mains#index"

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
  namespace :content do 
    
    get 'mains/index'
    resources :pages do
      collection do 
        get 'index'    
        get 'page_about'        
        get 'page_services'
        get 'page_pricing'
        get 'page_coming_soon'
        get 'page_faq'
        get 'page_search'
        get 'page_gallery'
        get 'page_registration'
        get 'page_login'
        get 'page_404'
        get 'page_clients'
        get 'page_privacy'
        get 'page_terms'
        get 'page_column_left'
        get 'page_column_right'
        get 'feature_grid'
        get 'feature_typography'
        get 'feature_thumbnail'
        get 'feature_component'
        get 'feature_navigation'
        get 'feature_table'
        get 'feature_form'
        get 'feature_icons'
        get 'feature_button'
        get 'portfolio'
        get 'portfolio_item'
        get 'portfolio_2columns'
        get 'portfolio_3columns'
        get 'portfolio_4columns'
        get 'blog'
        get 'blog_item'
        get 'blog_left_sidebar'
        get 'blog_item_left_sidebar'
        get 'page_contact'
        get 'page_contact1'  
      end
    end   
    resources :mains do
      collection do        
        get 'page_home2'
        get 'page_home3'
        get 'page_home4'
        get 'page_home5'
        get 'page_home6'
        get 'page_home7'
        get 'all_in_one'
      end  
    end
    resources :admins do
      collection do
        get 'index'
      end
    end
    resources :sliders do
      collection do
        get "index"
        get "new"
      end
    end
  end

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
