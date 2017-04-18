Rails.application.routes.draw do
  root 'articles#index'
  resources :users do
    resource :profile
  end
  resources :articles
  devise_for  :users,
              :path => '',
              :path_names => {  :sign_in =>       'login',
                                :sign_out =>      'logout',
                                :sign_up =>       '',
                                :registration =>  'register',
                                :edit =>          'edit',
                                :cancel =>        'cancel',
                                :confirmation =>  'verification'  },
              :controllers => { registrations: "registrations" }
end
