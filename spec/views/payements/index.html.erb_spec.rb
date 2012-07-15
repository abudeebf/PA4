require 'spec_helper'

describe "payements/index" do
  before(:each) do
    assign(:payements, [
      stub_model(Payement,
        :user_id => 1,
        :cardtype => "Cardtype",
        :cardnumber => "Cardnumber",
        :cvv => 2,
        :noteid => 3
      ),
      stub_model(Payement,
        :user_id => 1,
        :cardtype => "Cardtype",
        :cardnumber => "Cardnumber",
        :cvv => 2,
        :noteid => 3
      )
    ])
  end

  it "renders a list of payements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Cardtype".to_s, :count => 2
    assert_select "tr>td", :text => "Cardnumber".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
