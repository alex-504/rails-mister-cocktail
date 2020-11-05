Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [ :show, :new, :create ] 
    # !! should I use only, if I am not using scaffold?
  end
  
end

