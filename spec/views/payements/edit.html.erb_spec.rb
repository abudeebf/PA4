require 'spec_helper'

describe "payements/edit" do
  before(:each) do
    @payement = assign(:payement, stub_model(Payement,
      :user_id => 1,
      :cardtype => "MyString",
      :cardnumber => "MyString",
      :cvv => 1,
      :noteid => 1
    ))
  end

  it "renders the edit payement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => payements_path(@payement), :method => "post" do
      assert_select "input#payement_user_id", :name => "payement[user_id]"
      assert_select "input#payement_cardtype", :name => "payement[cardtype]"
      assert_select "input#payement_cardnumber", :name => "payement[cardnumber]"
      assert_select "input#payement_cvv", :name => "payement[cvv]"
      assert_select "input#payement_noteid", :name => "payement[noteid]"
    end
  end
end
