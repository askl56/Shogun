Shogun::Core::Engine.routes.draw do
  devise_for :users, class_name: "Shogun::User", module: :devise
  root to: 'dashboard#index'
end
