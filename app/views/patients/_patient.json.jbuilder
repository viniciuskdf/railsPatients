json.extract! patient, :id, :first_name, :last_name, :birth_date, :mass, :height, :attendance_date, :place, :clinical_case, :current_medication, :prescribed_medication, :created_at, :updated_at
json.url patient_url(patient, format: :json)
