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
    @list = List.new
    @lists = List.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def list_params
    params.require(:list).permit(:title, :body)
  end

end
