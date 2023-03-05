class AuthorsController < ApplicationController
    #Routing for getting all the authors
    get '/authors' do
      authors=Author.all.limit(10) 
      authors.to_json
    end

    get '/authors/:search' do
      search = params[:search]

      authors =[]
      if search 
        authors= Author.all.select{|author| author.name.downcase.include?(search.downcase)}
      else
        authors=Author.all.limit(10) 
      end
      pp authors
      authors.to_json
    end
    #Routing for getting an author and the associated books
    get '/authors/:id' do
      author=Author.find(params[:id])
      author.to_json(include: :books)
    end
  
  
end