require 'spec_helper'

describe "shows/show" do
  before(:each) do
    @show = assign(:show, stub_model(Show,
      :comedy_club_id => 1,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Title/)
  end
end
