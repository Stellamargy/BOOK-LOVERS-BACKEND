# Overview
This is a backend for a frontend project that allows a user to add books they wish to read to a library and keep track of their current .

# Structure
 
 ## Models Folder
 Used to establish relations/association between models.
 A book belongs to an author  and an author has many books (one to many relationship).
 ## Controllers Folder
 Used to define routing
 ## Migrate Folder
 Where migration are designed to create table.
 ## seed.rb file 
 Contains code that populates the tables in the database.
 ## config.ru
 Used to run our controllers.
 ## development.sqlite3
 Contains 2 tables : books and authors tables.

 # Technology used
This project was created using:
Ruby
Sinatra
and SQLite3

 # Getting started 
 Clone this git hub repisitory https://github.com/Stellamargy/BOOK-LOVERS-BACKEND and run rake server to get the server on.

 # Focus
 The focus of this project is building a Sinatra API backend that uses Active Record to access and persist data in a database, which will be used by a separate React frontend that interacts with the database via the API.
 

# Support and contact details
For any difficulties accessing the code, comments, concerns, ideas or any form of questions. Kindly contact me at stellahmargy@gmail.com.
## Contributing
Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.
Please make sure to update tests as appropriate.
## License
MIT License
Copyright © 2023 [STELLA OLOO]]
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.















