require 'spec_helper'

describe "events/new" do
  before(:each) do
    assign(:event, stub_model(Event,
      :name => "MyString",
      :location => "MyString",
      :time => "MyString",
      :description => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", events_path, "post" do
      assert_select "input#event_name[name=?]", "event[name]"
      assert_select "input#event_location[name=?]", "event[location]"
      assert_select "input#event_time[name=?]", "event[time]"
      assert_select "input#event_description[name=?]", "event[description]"
      assert_select "input#event_user_id[name=?]", "event[user_id]"
    end
  end
end
