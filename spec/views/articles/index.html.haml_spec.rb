require 'rails_helper'

RSpec.describe "articles/index", :type => :view do
  before(:each) do
    assign(:articles, [
      Article.create!(
        :title => "Title",
        :text1 => "MyText",
        :text2 => "MyText",
        :text3 => "MyText",
        :text4 => "MyText",
        :embed1 => "MyText",
        :embed2 => "MyText",
        :embed3 => "MyText",
        :embed4 => "MyText",
        :p1desescription => "P1desescription",
        :p2description => "P2description",
        :p3description => "P3description",
        :p4description => "P4description"
      ),
      Article.create!(
        :title => "Title",
        :text1 => "MyText",
        :text2 => "MyText",
        :text3 => "MyText",
        :text4 => "MyText",
        :embed1 => "MyText",
        :embed2 => "MyText",
        :embed3 => "MyText",
        :embed4 => "MyText",
        :p1desescription => "P1desescription",
        :p2description => "P2description",
        :p3description => "P3description",
        :p4description => "P4description"
      )
    ])
  end

  it "renders a list of articles" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "P1desescription".to_s, :count => 2
    assert_select "tr>td", :text => "P2description".to_s, :count => 2
    assert_select "tr>td", :text => "P3description".to_s, :count => 2
    assert_select "tr>td", :text => "P4description".to_s, :count => 2
  end
end
