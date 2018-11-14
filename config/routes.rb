# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get 'mail_reactions', to: 'mail_reactions#index'
post 'mail_reactions/edit/:id', to: 'mail_reactions#edit'
get 'mail_reactions/add',      to: 'mail_reactions#add'
