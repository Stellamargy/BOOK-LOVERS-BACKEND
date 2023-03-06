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
      # adding/creating a book
    post '/books' do
      title = params[:title]
      image_url = params[:image_url]
      genre = params[:genre]
      publisher = params[:publisher] || ""
      rating = params[:rating]
      author_id = params[:author_id]

      if(title && image_url && genre&& publisher && rating && author_id) 
        book = Book.create(title: title, image_url: image_url, genre: genre, publisher: publisher,  rating: rating, author_id: author_id)
      if book
            book.to_json
        else
            message = {:error => "Error saving book!"}
            message.to_json
      end
        
    else
        message = {:error => "Please enter all fields!"}
        message.to_json
    end

    end

    #updating
    patch '/books/:id' do
      book_existence = Book.exists?(id: params[:id]) #true/ false
      if book_existence
          title = params[:title]
          image_url = params[:image_url]
          genre = params[:genre]
          publisher = params[:publisher]
          rating = params[:rating]
          author= params[:author]
          if(title.present? && image_url.present? && genre.present? && publisher.present? && rating.present? && author.present?)
              
              book = Book.find_by(id: params[:id])
              book.update(title: title, image_url: image_url, genre: genre, publisher: publisher, rating: rating, author_id: author)
              message = {:success => "Book was successfully updated"}
              message.to_json
          else
              message = {:error => "All field should be field!"}
              message.to_json
          end

      else
          message = {:error => "Book not found!"}
          message.to_json
      end
    end

    # deleting a book 
    delete "/books/:id" do
      no_of_books = Book.where(id: params[:id]).count() 
      if no_of_books>0
          book = Book.find(params[:id])
          book.destroy
          message = {:succcess => "Book was  successfully deleted !!"}
          message.to_json

      else
          message = {:error => "Book not found"}
          message.to_json
      end


  end

  
end