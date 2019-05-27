class ShowAllCategoriesService

    def run
        
        categories = Category.all
        return categories.map(&:basic_info)
        
    end

end