class BooksController < ApplicationController

    def show
      @book = Book.find(params[:id])
    end

    def index
      @books = Book.all
      @book = Book.new
    end

    def create
      @book = Book.new(book_params)
      if @book.save
        redirect_to book_path(@book.id),notice: 'Book was successfully created.'
      else
        flash.now[:alert] = '2 errors prohibited this book from being saved:'
        @books = Book.all
        render :index
      end
    end

    def edit
      @book = Book.find(params[:id])
    end

    def update
      @book = Book.find(params[:id])
      if  @book.update(book_params)
        redirect_to book_path(@book.id),notice: 'Book was successfully updated.'
      else
        flash.now[:alert] = '2 error prohibited this book from being saved:'
        render :edit
      end
    end

    def destroy
      book = Book.find(params[:id])
      book.destroy
      redirect_to books_path
    end

    private
      def book_params
        params.require(:book).permit(:title, :body)
      end
end
