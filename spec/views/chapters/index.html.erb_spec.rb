require 'rails_helper'

RSpec.describe "chapters/index", type: :view do
  before(:each) do
    assign(:chapters, [
      Chapter.create!(
        :name => "Name",
        :state => "State"
      ),
      Chapter.create!(
        :name => "Name",
        :state => "State"
      )
    ])
  end

  it "renders a list of chapters" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
  end
end
