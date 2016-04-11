require 'rails_helper'

RSpec.describe "item_details/show", type: :view do
  before(:each) do
    @item_detail = assign(:item_detail, ItemDetail.create!(
      :item => nil,
      :description => "MyText",
      :other_imgs => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
