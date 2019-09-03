require 'rails_helper'

RSpec.describe "chapters/edit", type: :view do
  before(:each) do
    @chapter = assign(:chapter, Chapter.create!(
      :name => "MyString",
      :state => "MyString"
    ))
  end

  it "renders the edit chapter form" do
    render

    assert_select "form[action=?][method=?]", chapter_path(@chapter), "post" do

      assert_select "input[name=?]", "chapter[name]"

      assert_select "input[name=?]", "chapter[state]"
    end
  end
end
