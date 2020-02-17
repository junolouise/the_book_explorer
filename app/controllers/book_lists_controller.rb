# frozen_string_literal: true

class BookListsController < ApplicationController
  def index; end

  def new
    @book_list = BookList.new
  end

  def create
    @book_list = BookList.new(book_list_params)

    if @book_list.save
      flash[:notice] = "Saved booklist"
      render "index"
    else
      render "new"
    end
  end

  private
    def book_list_params
      params.require(:book_list).permit(:csv)
     end
end
