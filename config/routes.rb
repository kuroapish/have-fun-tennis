Rails.application.routes.draw do
  get 'tennistop/index'
  root to: "tennistop#index"
end
