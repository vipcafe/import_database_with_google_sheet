Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post "/add_database", to: "users#add_data_to_database"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
