class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :navn
      t.integer :telefon
      t.string :epost
      t.text :henvendelse

      t.timestamps null: false
    end
  end
end
