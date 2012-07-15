require 'spec_helper'

describe "notebooks/show" do
  before(:each) do
    @notebook = assign(:notebook, stub_model(Notebook,
      :title => "Title",
      :content => "MyText",
      :free => false,
      :course => "Course",
      :teacher => "Teacher",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/Course/)
    rendered.should match(/Teacher/)
    rendered.should match(/1/)
  end
end
