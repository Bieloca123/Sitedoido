class CreateFriendsdbs < ActiveRecord::Migration[5.2]
  def change
    create_table :friendsdbs do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :instagram

      t.timestamps
    end
  end
end
