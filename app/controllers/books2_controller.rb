class Books2Controller < ApplicationController

  def index
    @book2 = Book2.new
    @books2 = Book2.all
  end

  def create
    @book2 = Book2.new(book2_params)
    @book2.save
    redirect_to books2_index_path
  end

  def edit
    @book2 = Book2.find(params[:id])
  end

  def update
    @book2 = Book2.find(params[:id])
    @book2.update(book2_params)
    redirect_to books2_index_path
  end

  def destroy
    @book2 = Book2.find(params[:id])
    @book2.delete
    redirect_to books2_index_path

  end

  private

  def book2_params
    params.require(:book2).permit(:title,:body,:image)
  end

end
