module CategoriesHelper

  def parent_category_list
    result = [[nil, '-']]
    @categories.each do |category|
      key = category.id
      value = category.name
      result << [key, value]
    end
    result
  end

end
