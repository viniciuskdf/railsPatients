class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth_date
      t.float :mass
      t.float :height
      t.datetime :attendance_date
      t.string :place
      t.string :clinical_case
      t.string :current_medication
      t.string :prescribed_medication

      t.timestamps
    end
  end
end
