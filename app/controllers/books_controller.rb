class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def create
    book = Book.new(book_params)
    if book.save
    redirect_to '/books/params(:id)'
  end

  def edit
  end

  def show
  end

  private
  #ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
 end
end
