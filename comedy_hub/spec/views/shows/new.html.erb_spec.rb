require 'spec_helper'

describe "shows/new" do
  before(:each) do
    assign(:show, stub_model(Show,
      :comedy_club_id => 1,
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new show form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", shows_path, "post" do
      assert_select "input#show_comedy_club_id[name=?]", "show[comedy_club_id]"
      assert_select "input#show_title[name=?]", "show[title]"
    end
  end
end
