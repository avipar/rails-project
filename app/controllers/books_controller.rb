class BooksController < ApplicationController
  def create
    u = Author.find(params[:author_id])
    @book = u.books.create(title: params[:title] , ispn: params[:ispn] )
    render json: @book
  end
  def show
    u=Author.find(params[:author_id])
    render json: u.books.find(params[:id])
  end

  def index
    @u=Author.find(params[:author_id])
    render json: @u.books
  end
end
