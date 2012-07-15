require 'spec_helper'

describe "payements/show" do
  before(:each) do
    @payement = assign(:payement, stub_model(Payement,
      :user_id => 1,
      :cardtype => "Cardtype",
      :cardnumber => "Cardnumber",
      :cvv => 2,
      :noteid => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Cardtype/)
    rendered.should match(/Cardnumber/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
