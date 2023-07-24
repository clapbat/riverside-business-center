class CreateContactForms < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_forms do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :industry
      t.text :description
      t.date :start_date

      t.timestamps
    end
  end
end
