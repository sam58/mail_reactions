##
# Запись с параметрами одиночной задачи для получения почты и раскидывания ее по указанным параметрам
#   # Creating
#   # before_validation
#   # after_validation
#   # before_save
#   # around_save
#   # before_create
#   # around_create
#   # after_create
#   # after_save
#   #
#   # Updating
#   # before_validation
#   # after_validation
#   # before_save
#   # around_save
#   # before_update
#   # around_update
#   # after_update
#   # after_save
#   #
#   # Destroying
#   # before_destroy
#   # around_destroy
#   # after_destroy
#   #
##

class MailRecord < ActiveRecord::Base
  include Redmine::SubclassFactory #предоставляет служебные вещи для работы с классами от redmine
  include Redmine::SafeAttributes


  safe_attributes 'title',
                  'email',
                  'cron',
                  'active'
                  'type'

   validates_presence_of  :email, :cron, :active
   validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: [:create, :edit]


end
