require 'spec_helper'

describe "notebooks/index" do
  before(:each) do
    assign(:notebooks, [
      stub_model(Notebook,
        :title => "Title",
        :content => "MyText",
        :free => false,
        :course => "Course",
        :teacher => "Teacher",
        :user_id => 1
      ),
      stub_model(Notebook,
        :title => "Title",
        :content => "MyText",
        :free => false,
        :course => "Course",
        :teacher => "Teacher",
        :user_id => 1
      )
    ])
  end

  it "renders a list of notebooks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Course".to_s, :count => 2
    assert_select "tr>td", :text => "Teacher".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
