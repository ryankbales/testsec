require 'rails_helper'

RSpec.describe "tests/index", type: :view do
  before(:each) do
    assign(:tests, [
      Test.create!(
        :test_type => "Type"
      ),
      Test.create!(
        :test_type => "Type"
      )
    ])
  end

  it "renders a list of tests" do
    render
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
