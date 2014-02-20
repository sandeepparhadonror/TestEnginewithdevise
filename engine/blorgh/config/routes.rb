Blorgh::Engine.routes.draw do
 
  devise_for :users, :class_name => "Blorgh::User" , module: :devise

  resources :posts do
    resources :comments
end

#   devise_for :users, class_name: "MyEngine::User", module: :devise
  root to: "posts#index"

end
