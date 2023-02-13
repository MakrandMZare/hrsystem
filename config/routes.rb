Rails.application.routes.draw do
  resources :salaries
  resources :shift_times
  resources :emp_travel_expenditures
  resources :emp_travels
  resources :attendences
  resources :leave_emps
  resources :departments
  resources :employees
  #get 'home/index'
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
