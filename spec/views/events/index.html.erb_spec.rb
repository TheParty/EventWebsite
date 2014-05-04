require 'spec_helper'

describe "events/index" do
  before(:each) do
    assign(:events, [
      stub_model(Event,
        :name => "Name",
        :location => "Location",
        :time => "Time",
        :description => "Description",
        :user_id => 1
      ),
      stub_model(Event,
        :name => "Name",
        :location => "Location",
        :time => "Time",
        :description => "Description",
        :user_id => 1
      )
    ])
  end

end
