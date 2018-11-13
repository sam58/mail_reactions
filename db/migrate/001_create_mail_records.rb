class CreateMailRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :mail_records do |t|
      t.string :Title
      t.string :inputMail
    end
  end
end
