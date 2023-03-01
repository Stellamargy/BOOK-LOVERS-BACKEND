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
      publisher = params[:publisher]
      rating = params[:rating]
      author = params[:author]
      p(params)
      p(title,image_url,genre,publisher,rating,author)

      if(title.present? && image_url.present? && genre.present? && publisher.present? && rating.present? && author.present?) 
        book = Book.create(title: title, image_url: image_url, genre: genre, publisher: publisher,  rating: rating, author_id: author)
      if book
            message = {:succcess => "book successfully created!"}
            message.to_json
        else
            message = {:error => "Error saving book!"}
            message.to_json
      end
        
    else
        message = {:error => "Please enter all fields!"}
        message.to_json
    end

    end


  
end