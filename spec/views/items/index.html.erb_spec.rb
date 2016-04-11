require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        :category_id => 1,
        :name => "Name",
        :top_img => "Top Img",
        :price => 2,
        :star => 1.5,
        :asin => "Asin"
      ),
      Item.create!(
        :category_id => 1,
        :name => "Name",
        :top_img => "Top Img",
        :price => 2,
        :star => 1.5,
        :asin => "Asin"
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Top Img".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Asin".to_s, :count => 2
  end
end
