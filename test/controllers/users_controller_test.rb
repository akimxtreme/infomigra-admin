require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { birthdate: @user.birthdate, communes_id: @user.communes_id, countries_id: @user.countries_id, current_situation_countries_id: @user.current_situation_countries_id, current_statuses: @user.current_statuses, date_work_end: @user.date_work_end, date_work_end_undefined: @user.date_work_end_undefined, date_work_start: @user.date_work_start, description_latest_works: @user.description_latest_works, description_tasks_performed: @user.description_tasks_performed, distances_id: @user.distances_id, email: @user.email, family_bonds_id: @user.family_bonds_id, first_name: @user.first_name, first_surname: @user.first_surname, genders_id: @user.genders_id, latitude_y: @user.latitude_y, length_x: @user.length_x, level_studies_id: @user.level_studies_id, month_country: @user.month_country, month_current_situation_countries: @user.month_current_situation_countries, nickname: @user.nickname, password: @user.password, person_waiting_for_a_child: @user.person_waiting_for_a_child, phone: @user.phone, profiles_id: @user.profiles_id, rut: @user.rut, second_name: @user.second_name, second_surname: @user.second_surname, sentimental_situations_id: @user.sentimental_situations_id, sexual_identities_id: @user.sexual_identities_id, situations_arrivals_countries_id: @user.situations_arrivals_countries_id, status: @user.status, street_number: @user.street_number, studies_id: @user.studies_id, year_country: @user.year_country, year_current_situation_countries: @user.year_current_situation_countries, you_want_to_dos_id: @user.you_want_to_dos_id } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { birthdate: @user.birthdate, communes_id: @user.communes_id, countries_id: @user.countries_id, current_situation_countries_id: @user.current_situation_countries_id, current_statuses: @user.current_statuses, date_work_end: @user.date_work_end, date_work_end_undefined: @user.date_work_end_undefined, date_work_start: @user.date_work_start, description_latest_works: @user.description_latest_works, description_tasks_performed: @user.description_tasks_performed, distances_id: @user.distances_id, email: @user.email, family_bonds_id: @user.family_bonds_id, first_name: @user.first_name, first_surname: @user.first_surname, genders_id: @user.genders_id, latitude_y: @user.latitude_y, length_x: @user.length_x, level_studies_id: @user.level_studies_id, month_country: @user.month_country, month_current_situation_countries: @user.month_current_situation_countries, nickname: @user.nickname, password: @user.password, person_waiting_for_a_child: @user.person_waiting_for_a_child, phone: @user.phone, profiles_id: @user.profiles_id, rut: @user.rut, second_name: @user.second_name, second_surname: @user.second_surname, sentimental_situations_id: @user.sentimental_situations_id, sexual_identities_id: @user.sexual_identities_id, situations_arrivals_countries_id: @user.situations_arrivals_countries_id, status: @user.status, street_number: @user.street_number, studies_id: @user.studies_id, year_country: @user.year_country, year_current_situation_countries: @user.year_current_situation_countries, you_want_to_dos_id: @user.you_want_to_dos_id } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
