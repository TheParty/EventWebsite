require 'spec_helper'

describe "events/edit" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :name => "MyString",
      :location => "MyString",
      :time => "MyString",
      :description => "MyString",
      :user_id => 1
    ))
  end

end
