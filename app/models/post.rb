class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories
  accepts_nested_attributes_for :comments

  def categories_attributes=(category_attributes)
    category_attributes.values.each do |attributes|
      category = Category.find_or_create_by(attributes)
      categories << category
    end
  end
end
