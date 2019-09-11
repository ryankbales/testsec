require 'rails_helper'

RSpec.describe "tests/new", test_type: :view do
  before(:each) do
    assign(:test, Test.new(
      :test_type => ""
    ))
  end

  it "renders new test form" do
    render

    assert_select "form[action=?][method=?]", tests_path, "post" do

      assert_select "input[name=?]", "test[test_type]"
    end
  end
end
