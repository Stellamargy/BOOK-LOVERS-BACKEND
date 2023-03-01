class AuthorsController < ApplicationController
    #Routing for getting all the authors
    get '/authors' do
      authors=Author.all 
      authors.to_json
    end
    #Routing for getting an author and the associated books
    get '/authors/:id' do
      author=Author.find(params[:id])
      author.to_json(include: :books)
    end
  
  
end