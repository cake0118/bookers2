class BooksController < ApplicationController

  def index
    @book = Book.new
    @user = current_user
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def show
    @book = Book.new
    @book_a = Book.find(params[:id])
    @user = @book_a.user
  end

  def destroy

  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
