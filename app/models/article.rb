class Article < ActiveRecord::Base
  validates_presence_of :title, :text1  
  has_attached_file :photo4, :styles => { :medium => "800x600>" }
  validates_attachment_content_type :photo4, :content_type => /\Aimage\/.*\Z/ 
  has_attached_file :photo3, :styles => { :medium => "800x600>" }
  validates_attachment_content_type :photo3, :content_type => /\Aimage\/.*\Z/ 
  has_attached_file :photo2, :styles => { :medium => "800x600>" }
  validates_attachment_content_type :photo2, :content_type => /\Aimage\/.*\Z/ 
  has_attached_file :photo1, :styles => { :medium => "800x600>" }
  validates_attachment_content_type :photo1, :content_type => /\Aimage\/.*\Z/ 
end
