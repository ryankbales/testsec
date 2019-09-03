require 'rails_helper'

RSpec.describe "tests/edit", type: :view do
  before(:each) do
    @test = assign(:test, Test.create!(
      :type => ""
    ))
  end

  it "renders the edit test form" do
    render

    assert_select "form[action=?][method=?]", test_path(@test), "post" do

      assert_select "input[name=?]", "test[type]"
    end
  end
end
