class CreateParticipants < ActiveRecord::Migration[6.0]
  def change
    create_table :participants do |t|
      t.string :email
      t.references :raffle, null: false, foreign_key: true

      t.timestamps
    end
    add_index :participants, :email
  end
end
