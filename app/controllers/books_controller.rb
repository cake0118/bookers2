class BooksController < ApplicationController
  
  def index
    @books = 
    @user = User.find(params[:id])
    @book = Book.new
  end
  
  def show
  end
  
  def edit
  end
  
  private 
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
