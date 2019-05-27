class CategoriesController < ApplicationController
  def index

    show_all_categories_service = ShowAllCategoriesService.new()
    categories = show_all_categories_service.run()
    render json: categories, status: :ok

  end
end
