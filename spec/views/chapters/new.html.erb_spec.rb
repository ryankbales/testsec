require 'rails_helper'

RSpec.describe "chapters/new", type: :view do
  before(:each) do
    assign(:chapter, Chapter.new(
      :name => "MyString",
      :state => "MyString"
    ))
  end

  it "renders new chapter form" do
    render

    assert_select "form[action=?][method=?]", chapters_path, "post" do

      assert_select "input[name=?]", "chapter[name]"

      assert_select "input[name=?]", "chapter[state]"
    end
  end
end
