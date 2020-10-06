Rails.application.routes.draw do

  namespace :admin do
    get 'items/new'
    get 'items/index'
    get 'items/show'
    get 'items/edit'
  end
  namespace :admin do
    get 'homes/top'
    get 'homes/search'
  end
  namespace :admin do
    get 'genres/index'
    get 'genres/edit'
  end
  namespace :admin do
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
  end

  devise_for :admins
  devise_for :customers

end
