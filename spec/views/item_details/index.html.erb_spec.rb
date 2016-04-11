require 'rails_helper'

RSpec.describe "item_details/index", type: :view do
  before(:each) do
    assign(:item_details, [
      ItemDetail.create!(
        :item => nil,
        :description => "MyText",
        :other_imgs => "MyText"
      ),
      ItemDetail.create!(
        :item => nil,
        :description => "MyText",
        :other_imgs => "MyText"
      )
    ])
  end

  it "renders a list of item_details" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
