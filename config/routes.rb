Rails.application.routes.draw do
  root "cats#index"
	resources :cats, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  # ==> get "/cats", to: "cats#index"
  # ==> get "/cats/new", to: "cats#new"
  # ==> post "/cats", to: "cats#create"
  # ==> get "/cats/:id", to: "cats#show", as: "cat"
  # ==> get "/cats/:id/edit", to: "cats#edit", as: "edit_cat"
  # ==> patch "/cats/:id", to: "cats#update"
  # ==> delete "/cats/:id", to "cats@destroy"

end
