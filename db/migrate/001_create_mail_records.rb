class CreateMailRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :mail_records do |t|
      t.string :title
      t.string :inputMail
      t.string :cron
      t.boolean :active
    end
  end
end
