class SearchesController < ApplicationController
 before_action :authenticate_user!

  def search
    @model = params[:model]
    @word = params[:word]
    @search = params[:search]

    if @model == "user"
      @users = User.search_for(@word, @search)
    else
      @books = Book.search_for(@word, @search)
    end
  end
end

