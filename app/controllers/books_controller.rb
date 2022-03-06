class BooksController < ApplicationController

  def create
    list = List.new(list_params)
    if list.save
      redirect_to books_path
    else
      render :index
    end
  end

  def index
    @list = List.new
    @lists = List.all

    @book = Book.new
    @books = Book.all
  end

  def show
    p "内容確認ここから"
    p @list = List.find(params[:id])
    p "ここまで********"

    #@list = List.find(params[:id])
  end

  def edit
    p "内容確認ここから"
    p @list = List.find(params[:id])
    p "ここまで********"
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    p "内容確認ここから"
    p list_params
    p "****************"
    p @list.update(list_params)
    p "ここまで********"
    redirect_to book_path(@list.id)
  end

  def destroy
    @list = List.find(params[:id])
    @list.delete
    redirect_to books_path
  end

  private

  def list_params
    params.require(:list).permit(:title, :body, :image)
  end

  def book_params
    params.require(:book).permit(:title, :body)
  end

end