class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.references :pet, foreign_key: true
      t.datetime :date
      t.boolean :requires_reminder, default: false
      t.text :reason_for_visit

      t.timestamps
    end
  end
end
