Rails.application.routes.draw do
  mount Shogun::Core::Engine => "/", as: 'shogun'
end
