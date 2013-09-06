require 'spec_helper'

describe "links/new" do
  before(:each) do
    assign(:link, stub_model(Link,
      :href => "MyString",
      :title => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", links_path, "post" do
      assert_select "input#link_href[name=?]", "link[href]"
      assert_select "input#link_title[name=?]", "link[title]"
      assert_select "input#link_user_id[name=?]", "link[user_id]"
    end
  end
end
