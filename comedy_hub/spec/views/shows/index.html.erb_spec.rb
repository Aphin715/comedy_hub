require 'spec_helper'

describe "shows/index" do
  before(:each) do
    assign(:shows, [
      stub_model(Show,
        :comedy_club_id => 1,
        :title => "Title"
      ),
      stub_model(Show,
        :comedy_club_id => 1,
        :title => "Title"
      )
    ])
  end

  it "renders a list of shows" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
