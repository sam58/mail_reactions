# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get 'mail_reactions', :to => 'mail_reactions#index'
post 'post/add', :to => 'mail_reactions#add'
post 'post/edit/:id', :to => 'mail_reactions#edit'