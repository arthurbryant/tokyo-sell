require 'rails_helper'

RSpec.describe "item_details/new", type: :view do
  before(:each) do
    assign(:item_detail, ItemDetail.new(
      :item => nil,
      :description => "MyText",
      :other_imgs => "MyText"
    ))
  end

  it "renders new item_detail form" do
    render

    assert_select "form[action=?][method=?]", item_details_path, "post" do

      assert_select "input#item_detail_item_id[name=?]", "item_detail[item_id]"

      assert_select "textarea#item_detail_description[name=?]", "item_detail[description]"

      assert_select "textarea#item_detail_other_imgs[name=?]", "item_detail[other_imgs]"
    end
  end
end
