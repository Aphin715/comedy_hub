require 'spec_helper'

describe "comedy_clubs/index" do
  before(:each) do
    assign(:comedy_clubs, [
      stub_model(ComedyClub,
        :name => "Name",
        :location => "Location"
      ),
      stub_model(ComedyClub,
        :name => "Name",
        :location => "Location"
      )
    ])
  end

  it "renders a list of comedy_clubs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
