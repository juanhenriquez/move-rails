class CreateGroupAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :group_admins do |t|
      t.belongs_to :group
      t.belongs_to :user
      t.timestamps
    end
  end
end
