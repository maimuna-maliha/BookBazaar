# BookBazaar - Online Book Shop

BookBazaar is a full-stack online book shop application built with **PHP, MySQL, HTML, CSS, and JavaScript**. It allows users to browse, view details, and purchase books, while admins can manage books, orders, and users from a dashboard.

---

## Features

### User Side
- Browse all books and search by title or author
- View detailed book information
- Add books to cart and checkout
- User registration and login
- View order history and account details

### Admin Dashboard
- Add, edit, and delete books
- Manage orders and track sales
- Manage users and their roles
- Dashboard statistics (total books, orders, customers, sales)

---

## Technologies Used
- **Frontend:** HTML, CSS, JavaScript
- **Backend:** PHP
- **Database:** MySQL
- **Server:** XAMPP (Apache & MySQL)

---

## Folder Structure
online-book-shop/
│
├── home.php                  # Home page (welcome, header, footer)
├── books.php                 # Books page
├── book_details.php          # Book details page
├── about.php                 # About page
├── authors.php               # Authors page
├── contact.php               # Contact page
│
├── auth/
│   ├── login.php             # User/Admin login
│   ├── signup.php            # User registration
│   ├── logout.php            # Logout
│
├── user/
│   ├── dashboard.php         # User dashboard (books, cart, orders)
│   ├── book_details.php      # Book details
│   ├── account.php           # Manage account details
│   ├── cart.php              # Cart page
│   ├── checkout.php          # Checkout / Buy Now page
│   ├── orders.php            # User's past orders
│
├── admin/
│   ├── dashboard.php         # Admin dashboard
│   ├── manage_books.php      # Books management
│   ├── add_book.php          # Add new books
│   ├── edit_book.php         # Edit book info
│   ├── delete_book.php       # Delete book
│   ├── users.php             # See user activity
│   ├── sales.php             # Total sales, payment history
│
├── assets/
│   ├── css/
│   │    └── style.css        # Global CSS
│   ├── js/
│   │    └── script.js        # Global JS
│   └── images/               # Book images, author images
│
├── includes/
│   ├── header.php            # Header for all pages
│   ├── footer.php            # Footer for all pages
│   └── db_connect.php        # Database connection
│
└── sql/
    └── online_book_shop.sql  # Database

---

