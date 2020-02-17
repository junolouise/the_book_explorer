# frozen_string_literal: true

class BookListsController < ApplicationController
  def index; end

  def new
    @book_list = BookList.new
  end

  private

  def item_params
    params.require(:book_list).permit(:csv)
   end

end
