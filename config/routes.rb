Rails.application.routes.draw do
  get 'welcome', to: 'static_pages#welcome', as:'welcome'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #root to: redirect('/welcome', status: 302) #works same as the line below it
  get '/', to: 'static_pages#welcome'
  get 'about', to: 'static_pages#about', as: 'about'
  get 'contact',to: 'static_pages#contact',as: 'contact'
  post 'contact', to: 'static_pages#leave_feedback', as: 'leave_feedback'
end
