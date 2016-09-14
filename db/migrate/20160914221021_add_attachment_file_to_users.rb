class AddAttachmentFileToUsers < ActiveRecord::Migration
  def change
    change_table :images do |t|
      t.attachment :photo
    end
  end
end
