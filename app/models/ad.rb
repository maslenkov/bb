class Ad < ActiveRecord::Base
  attr_accessible :adress, :category_id, :city, :description, :e_mail, :image, :title, :category_name
  validates :adress, :city, :description, :e_mail, :title, :presence => true
  mount_uploader :image, ImageUploader
  belongs_to :category
  
  def category_name
    self.category.name if self.category
  end

  def category_name=(name)
    unless name.blank?
      unless self.category = Category.find_by_name(name) 
        self.category = Category.new
        self.category.name = name
        self.category.save
        self.category_id = self.category.id
      end
    end
  end
end
