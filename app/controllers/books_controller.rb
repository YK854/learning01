class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:name,:textboby)
  end

end
