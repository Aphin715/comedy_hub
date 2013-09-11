require 'spec_helper'

describe Act do
  it {should belong_to(:comedian)}
  it {should belong_to(:show)}
end
