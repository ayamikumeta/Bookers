class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to "/books/#{book.id}"
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @books = Book.new
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    book.uptade(book_params)
    redirect_to book_path(book.id)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to "/books"
  end

  private
  #ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end