require 'spec_helper'

describe "colleges/new" do
  before(:each) do
    assign(:college, stub_model(College,
      :name => "MyString",
      :short => "MyString"
    ).as_new_record)
  end

  it "renders new college form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => colleges_path, :method => "post" do
      assert_select "input#college_name", :name => "college[name]"
      assert_select "input#college_short", :name => "college[short]"
    end
  end
end
