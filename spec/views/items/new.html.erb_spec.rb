require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      :category_id => 1,
      :name => "MyString",
      :top_img => "MyString",
      :price => 1,
      :star => 1.5,
      :asin => "MyString"
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input#item_category_id[name=?]", "item[category_id]"

      assert_select "input#item_name[name=?]", "item[name]"

      assert_select "input#item_top_img[name=?]", "item[top_img]"

      assert_select "input#item_price[name=?]", "item[price]"

      assert_select "input#item_star[name=?]", "item[star]"

      assert_select "input#item_asin[name=?]", "item[asin]"
    end
  end
end
