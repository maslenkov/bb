class WidgetController < ApplicationController
  layout false
  
  def categorys
    @categories = Category.all
  end
end
