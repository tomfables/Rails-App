Tapp::Application.routes.draw do
  #match ':controller(/:action(/:id))(.:format)'
  
  #get "home/index"
  
	resources :shows, :show_to_times
    #resources :accounts, :shows, :tickets, :show  do
    #	resources :show_to_times
    #end
 	root :to => 'home#index'
  end



