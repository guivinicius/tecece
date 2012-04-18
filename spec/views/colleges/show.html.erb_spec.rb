require 'spec_helper'

describe "colleges/show" do
  before(:each) do
    @college = assign(:college, stub_model(College,
      :name => "Name",
      :short => "Short"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Short/)
  end
end
