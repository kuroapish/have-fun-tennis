Rails.application.routes.draw do
  devise_for :users
  get 'tennistop/index'
  root to: "tennistop#index"
end


