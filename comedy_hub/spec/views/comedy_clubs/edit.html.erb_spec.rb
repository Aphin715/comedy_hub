require 'spec_helper'

describe "comedy_clubs/edit" do
  before(:each) do
    @comedy_club = assign(:comedy_club, stub_model(ComedyClub,
      :name => "MyString",
      :location => "MyString"
    ))
  end

  it "renders the edit comedy_club form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", comedy_club_path(@comedy_club), "post" do
      assert_select "input#comedy_club_name[name=?]", "comedy_club[name]"
      assert_select "input#comedy_club_location[name=?]", "comedy_club[location]"
    end
  end
end
