Create a new rails app :- 
rails new Rails_project
cd Rails_project


Model :- manage the data in your application(data base),
View :- handles rendering response in different for (json ,xml ),
Controller :- handels user interaction and logic for each request.

Creating our application Database Boot up our rails server for the first time.
bin/rails db:create
start web server:- bin/rails server.

Create a database model :- 
Active Record:- is a feature of rails that maps relational database to ruby code,generate SQL.
bin/rails generate model product name :string
model name:- product,
colume name:-name,
type :- string.

Database migrations:- A migrations is a set of changes we want to make to our database.
Running Migration :- bin/rails db:migrate.

Rails Console:- Now that we have created our products table, we can interact with it in Rails. 
bin/rails console.

Active Records Model basics:-
creating Records:- product = Product .new(name:"T-shirt").
product.save.
product.create(name:"asddf").(create new product).
product.all (show all product list)

filter and order records:-
where:- product.where(name:"asddf").
order:- product.order(name: :asc).ascending alphabetical order.

finding records:-(id)
product = Product.find(1).
update:- product.update(name: "watch").
Edit :- product = Product.find(1)
product.name = "shirt".

Validatiov:-class Product < ApplicationRecord
  validates :name, presence: true
end

Add blank column :-product = Product.new
product.save
false

show error:- product.errors 
full error message:- product.errors.full_messages ["Name can't be blank "]

Routs:- Part of the URL 
https://example.org/products?sale=true&sort=asc

https:- protocol,
example.org:- host,
/product:- path,
?sale=true&sort=asc:-query parameters.

http methods and their purpose:-
GET:-retrive the data for a given url.
POST:- submit the data.
PUT PATCH:-submits data to a URL to update an existing record
DELETE:- delete the data.