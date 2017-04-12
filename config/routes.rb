Rails.application.routes.draw do
  root 'pages#home'
  resources :users do
    resource :profile
  end
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
