require 'spec_helper'

describe "colleges/edit" do
  before(:each) do
    @college = assign(:college, stub_model(College,
      :name => "MyString",
      :short => "MyString"
    ))
  end

  it "renders the edit college form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => colleges_path(@college), :method => "post" do
      assert_select "input#college_name", :name => "college[name]"
      assert_select "input#college_short", :name => "college[short]"
    end
  end
end
