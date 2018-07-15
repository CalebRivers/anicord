class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.text :form_of
      t.text :last_date_administered
      t.text :interval
      t.integer :pet_id

      t.timestamps
    end
  end
end
