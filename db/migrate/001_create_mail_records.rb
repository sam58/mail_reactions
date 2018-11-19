class CreateMailRecords < ActiveRecord::Migration[5.2]
  def change
    puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    create_table :mail_records do |t|
      t.string :title
      t.string :email
      t.string :cron
      t.boolean :active
    end
  end
end
#rake db:migrate:plugin NAME=mail_reactions VERSION=0 RAILS_ENV=production Это работает но считается устаревшей
#bundle exec rake redmine:plugins:migrate NAME=plugin_name VERSION=0 RAILS_ENV=production это не работает, хотя почему то считается правильной. Где то путаница с райлс
#>bundle exec rake redmine:plugins NAME=mail_reactions RAILS_ENV=production