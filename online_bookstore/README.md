# online_bookstore

**Project Requirements:**

1. Install MySQL server on your local machine and set hostname as 'root'
2. Install Python3 [https://www.python.org/downloads/]
3. Download Pycharm or any IDE
4. Download Postman

**Setup Database:**

1. Open the terminal in your system
2. Navigate to your project directory using the cd command eg. /online_bookstore
3. Execute command ls and check whether the book_store.sql file is present, if not navigate to the SQL file location in the project
4. Login to the MySQL server command line using the command:
   > mysql -u root -p

5. Next we need to create a database for our project using the command:
   > create database book_store;
   
   > show databases;
   
   > exit

6. Now create all the required tables and insert data in the database using the command:
   > mysql -u root -p book_store < online_bookstore/book_store.sql

*DB is set up done!*

**Setup Backend:**

1. Open the project in Pycharm or any IDE you prefer to code.
2. Open the project terminal.
3. Run the following commands in the terminal:
   > python3 --version

   > python3 -m venv venv

   > source venv/bin/activate

   > pip3 install requirements.txt

   > python app.py

  *The backend is up and running!*

4. This will start the server on your local machine.
5. Open the Postman application and import this collection:
   [https://api.postman.com/collections/17840735-2606b556-64b5-410a-bfa8-e132a79c23bf?access_key=PMAT-01HDHEQYXMAF1QRGK87BN9F043]
6. Use APIs to create data and fetch data from DB.

**API Description**

*User Authentication:*
1. POST /register: new user registration
2. POST /login: login existing users

*Books:*
1. GET /books: fetch all books
2. GET /books/id: fetch book by id
3. POST /books: add a new book
4. PUT /books/id: edit a book description
5. DELETE /books/id: delete a book

*Cart:*
1. GET /cart: fetch all cart items
2. POST /add_to_cart: add a new item to the cart
3. PUT /update_item: update the quantity of cart items
4. DELETE /remove_item: remove item from cart

*Orders:*
1. GET /orders: fetch all orders
2. POST /add_order: add a new order
3. GET /orders/id: fetch an order by id
4. PUT /orders/id: edit order details
5. DELETE /orders/id: delete an order
