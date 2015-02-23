require 'rails_helper'

RSpec.describe "authors/edit", :type => :view do
  before(:each) do
    @author = assign(:author, Author.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :about => "MyText",
      :link_profile => "MyText"
    ))
  end

  it "renders the edit author form" do
    render

    assert_select "form[action=?][method=?]", author_path(@author), "post" do

      assert_select "input#author_first_name[name=?]", "author[first_name]"

      assert_select "input#author_last_name[name=?]", "author[last_name]"

      assert_select "textarea#author_about[name=?]", "author[about]"

      assert_select "textarea#author_link_profile[name=?]", "author[link_profile]"
    end
  end
end
