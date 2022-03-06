class BooksController < ApplicationController

  def create
    p list = List.new(list_params)
    if list.save
      redirect_to books_path
    else
      render :new
    end
  end

  def index
    p "内容確認ここから"
    p @list = List.new
    p "ここまで********"
    @lists = List.all
  end

  def show
    p "内容確認ここから"
    p @list = List.find(params[:id])
    p "ここまで********"
  end

  def edit
    p "内容確認ここから"
    p @list = List.find(params[:id])
    p "ここまで********"
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
  end

  private

  def list_params
    params.require(:list).permit(:title, :body)
  end

end