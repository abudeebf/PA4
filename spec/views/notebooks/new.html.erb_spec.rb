require 'spec_helper'

describe "notebooks/new" do
  before(:each) do
    assign(:notebook, stub_model(Notebook,
      :title => "MyString",
      :content => "MyText",
      :free => false,
      :course => "MyString",
      :teacher => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new notebook form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => notebooks_path, :method => "post" do
      assert_select "input#notebook_title", :name => "notebook[title]"
      assert_select "textarea#notebook_content", :name => "notebook[content]"
      assert_select "input#notebook_free", :name => "notebook[free]"
      assert_select "input#notebook_course", :name => "notebook[course]"
      assert_select "input#notebook_teacher", :name => "notebook[teacher]"
      assert_select "input#notebook_user_id", :name => "notebook[user_id]"
    end
  end
end
