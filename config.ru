require_relative "./config/environment"
use Rack::JSONBodyParser
use AuthorsController
use BooksController
run ApplicationController