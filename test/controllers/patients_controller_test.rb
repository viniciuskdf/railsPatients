require "test_helper"

class PatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get patients_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_url
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post patients_url, params: { patient: { attendance_date: @patient.attendance_date, birth_date: @patient.birth_date, clinical_case: @patient.clinical_case, current_medication: @patient.current_medication, first_name: @patient.first_name, height: @patient.height, last_lame: @patient.last_lame, mass: @patient.mass, place: @patient.place, prescribed_medication: @patient.prescribed_medication } }
    end

    assert_redirected_to patient_url(Patient.last)
  end

  test "should show patient" do
    get patient_url(@patient)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_url(@patient)
    assert_response :success
  end

  test "should update patient" do
    patch patient_url(@patient), params: { patient: { attendance_date: @patient.attendance_date, birth_date: @patient.birth_date, clinical_case: @patient.clinical_case, current_medication: @patient.current_medication, first_name: @patient.first_name, height: @patient.height, last_lame: @patient.last_lame, mass: @patient.mass, place: @patient.place, prescribed_medication: @patient.prescribed_medication } }
    assert_redirected_to patient_url(@patient)
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete patient_url(@patient)
    end

    assert_redirected_to patients_url
  end
end
