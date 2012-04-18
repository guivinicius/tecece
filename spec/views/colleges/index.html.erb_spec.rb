require 'spec_helper'

describe "colleges/index" do
  before(:each) do
    assign(:colleges, [
      stub_model(College,
        :name => "Name",
        :short => "Short"
      ),
      stub_model(College,
        :name => "Name",
        :short => "Short"
      )
    ])
  end

  it "renders a list of colleges" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Short".to_s, :count => 2
  end
end
