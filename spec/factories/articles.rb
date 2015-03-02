FactoryGirl.define do
  factory :article do
    title "MyString"
    text1 "MyText"
    text2 "MyText"
    text3 "MyText"
    text4 "MyText"
    photo4 { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'eu.jpg'), "image/jpeg") }    
    photo3 { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'eu.jpg'), "image/jpeg") }    
    photo2 { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'eu.jpg'), "image/jpeg") }    
    photo1 { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'files', 'eu.jpg'), "image/jpeg") }        
    embed1 "MyText"
    embed2 "MyText"
    embed3 "MyText"
    embed4 "MyText"
    p1desescription "MyString"
    p2description "MyString"
    p3description "MyString"
    p4description "MyString"
    category_id 1
    author_id 1   
  end

end
