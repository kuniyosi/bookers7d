class SearchesController < ApplicationController
 before_action :authenticate_user!

  def search
    @model = params[:model]

    if @model == "User"
      @users = User.looks(params[:search], params[:word])
      redirect_to "/searches"
    else
      @books = Book.looks(params[:search], params[:word])
      redirect_to "/searches"
    end
  end
end

