class BooksController < ApplicationController
  #gets all the books with data about the associated author
    get '/books' do
      books=Book.all
      books.to_json(include: :author)
    end  

    #gets a single book with the associated author
    get '/books/:id' do
      book=Book.find(params[:id])
      book.to_json(include: :author)
    end
  
end