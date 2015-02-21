require 'rails_helper'

RSpec.describe "articles/show", :type => :view do
  before(:each) do
    @article = assign(:article, Article.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/P1desescription/)
    expect(rendered).to match(/P2description/)
    expect(rendered).to match(/P3description/)
    expect(rendered).to match(/P4description/)
  end
end
