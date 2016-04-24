class CreateInvitees < ActiveRecord::Migration
  def change
    create_table :invitees do |t|
      t.string :name_on_invite
      t.integer :invitees_present
      t.integer :plus_ones
      t.string :dressed_in_garb
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
