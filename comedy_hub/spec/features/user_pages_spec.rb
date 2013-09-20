require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "signup page" do
    before { visit '/users/new' }

    it { should have_content('Sign Up') }
    it { should have_content('Comedians')}
    it {should have_content('Comedy Hub')}
  end
end

describe "profile page" do
  let(:user) { FactoryGirl.create(:user) }

  before { visit user_path(user) }

  it {should have_content(user.name) }
end