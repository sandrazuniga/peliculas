require "application_system_test_case"

class DocumentariesTest < ApplicationSystemTestCase
  setup do
    @documentary = documentaries(:one)
  end

  test "visiting the index" do
    visit documentaries_url
    assert_selector "h1", text: "Documentaries"
  end

  test "should create documentary" do
    visit documentaries_url
    click_on "New documentary"

    fill_in "Año", with: @documentary.año
    fill_in "Director", with: @documentary.director
    fill_in "Name", with: @documentary.name
    click_on "Create Documentary"

    assert_text "Documentary was successfully created"
    click_on "Back"
  end

  test "should update Documentary" do
    visit documentary_url(@documentary)
    click_on "Edit this documentary", match: :first

    fill_in "Año", with: @documentary.año
    fill_in "Director", with: @documentary.director
    fill_in "Name", with: @documentary.name
    click_on "Update Documentary"

    assert_text "Documentary was successfully updated"
    click_on "Back"
  end

  test "should destroy Documentary" do
    visit documentary_url(@documentary)
    click_on "Destroy this documentary", match: :first

    assert_text "Documentary was successfully destroyed"
  end
end
