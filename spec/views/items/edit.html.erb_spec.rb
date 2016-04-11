require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :category_id => 1,
      :name => "MyString",
      :top_img => "MyString",
      :price => 1,
      :star => 1.5,
      :asin => "MyString"
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input#item_category_id[name=?]", "item[category_id]"

      assert_select "input#item_name[name=?]", "item[name]"

      assert_select "input#item_top_img[name=?]", "item[top_img]"

      assert_select "input#item_price[name=?]", "item[price]"

      assert_select "input#item_star[name=?]", "item[star]"

      assert_select "input#item_asin[name=?]", "item[asin]"
    end
  end
end
