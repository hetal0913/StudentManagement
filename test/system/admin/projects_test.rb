require "application_system_test_case"

class Admin::ProjectsTest < ApplicationSystemTestCase
  setup do
    @admin_project = admin_projects(:one)
  end

  test "visiting the index" do
    visit admin_projects_url
    assert_selector "h1", text: "Admin/Projects"
  end

  test "creating a Project" do
    visit admin_projects_url
    click_on "New Admin/Project"

    fill_in "Description", with: @admin_project.description
    fill_in "Name", with: @admin_project.name
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "updating a Project" do
    visit admin_projects_url
    click_on "Edit", match: :first

    fill_in "Description", with: @admin_project.description
    fill_in "Name", with: @admin_project.name
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "destroying a Project" do
    visit admin_projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project was successfully destroyed"
  end
end
