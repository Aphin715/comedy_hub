require 'spec_helper'

describe "comedy_clubs/show" do
  before(:each) do
    @comedy_club = assign(:comedy_club, stub_model(ComedyClub,
      :name => "Name",
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Location/)
  end
end
