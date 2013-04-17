module CategoriesHelper

  def parent_category_list
    result = [[0, '-']]
    @categories.each do |category|
      key = category.id
      value = category.name
      result << [key, value]
    end
    result
  end

end
