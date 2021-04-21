require "application_system_test_case"

class PatientsTest < ApplicationSystemTestCase
  setup do
    @patient = patients(:one)
  end

  test "visiting the index" do
    visit patients_url
    assert_selector "h1", text: "Patients"
  end

  test "creating a Patient" do
    visit patients_url
    click_on "New Patient"

    fill_in "Attendance date", with: @patient.attendance_date
    fill_in "Birth date", with: @patient.birth_date
    fill_in "Clinical case", with: @patient.clinical_case
    fill_in "Current medication", with: @patient.current_medication
    fill_in "First name", with: @patient.first_name
    fill_in "Height", with: @patient.height
    fill_in "Last lame", with: @patient.last_lame
    fill_in "Mass", with: @patient.mass
    fill_in "Place", with: @patient.place
    fill_in "Prescribed medication", with: @patient.prescribed_medication
    click_on "Create Patient"

    assert_text "Patient was successfully created"
    click_on "Back"
  end

  test "updating a Patient" do
    visit patients_url
    click_on "Edit", match: :first

    fill_in "Attendance date", with: @patient.attendance_date
    fill_in "Birth date", with: @patient.birth_date
    fill_in "Clinical case", with: @patient.clinical_case
    fill_in "Current medication", with: @patient.current_medication
    fill_in "First name", with: @patient.first_name
    fill_in "Height", with: @patient.height
    fill_in "Last lame", with: @patient.last_lame
    fill_in "Mass", with: @patient.mass
    fill_in "Place", with: @patient.place
    fill_in "Prescribed medication", with: @patient.prescribed_medication
    click_on "Update Patient"

    assert_text "Patient was successfully updated"
    click_on "Back"
  end

  test "destroying a Patient" do
    visit patients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patient was successfully destroyed"
  end
end
