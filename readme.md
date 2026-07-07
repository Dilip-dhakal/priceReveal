# 🚀 PriceTruth

> **Helping users make smarter purchasing decisions through price transparency.**

PriceTruth is a full-stack web application that enables users to compare product prices across multiple online marketplaces, monitor historical price trends, and receive instant notifications whenever products become more affordable.

Instead of manually visiting several e-commerce websites, users can access all the information they need from a single platform, saving both time and money.

---

# 📖 Table of Contents

* About PriceTruth
* Why PriceTruth?
* The Problem
* Our Solution
* Key Features
* User Journey
* System Architecture
* Project Structure
* Technology Stack
* Installation
* Environment Variables
* Running the Project
* API Documentation
* Database Design
* Security
* Development Roadmap
* Future Improvements
* Contributing
* License

---

# 🌍 About PriceTruth

Online shopping has become increasingly convenient, but finding the best deal has become increasingly difficult.

The same product often appears across numerous online stores with different prices, discounts, shipping costs, promotional offers, and availability.

PriceTruth was created to simplify this process by becoming a single platform where users can:

* Compare prices instantly
* Track price history
* Save products for later
* Receive automatic price-drop notifications
* Make informed purchasing decisions

Our goal is simple:

> **Never let users overpay for products again.**

---

# ❓ Why PriceTruth?

Consumers typically spend significant time searching multiple websites before making a purchase.

Common questions include:

* Is this really the cheapest price?
* Has this product been cheaper before?
* Should I buy now or wait?
* Which marketplace offers the best value?
* When is the best time to purchase?

PriceTruth answers these questions through real-time comparison and historical pricing insights.

---

# ⚠ The Problem

Modern e-commerce creates several challenges:

* Prices constantly change.
* Discounts are temporary.
* Different stores offer different deals.
* Users often miss limited-time offers.
* Price history is difficult to access.
* Manual comparison wastes valuable time.

As a result, many consumers purchase products without knowing whether they're actually getting a good deal.

---

# 💡 Our Solution

PriceTruth centralizes product information from multiple marketplaces into one intelligent platform.

Instead of manually comparing products, users simply search once.

PriceTruth then:

* Collects product listings
* Compares prices
* Displays historical price trends
* Tracks future price changes
* Notifies users when prices drop

This transforms shopping from guesswork into informed decision-making.

---

# ✨ Core Features

## 👤 User Authentication

* Secure user registration
* Secure login
* JWT Authentication
* Password hashing using bcrypt
* Refresh token support
* Protected routes

---

## 🔍 Product Discovery

Search products using:

* Product name
* Brand
* Category
* Keywords

---

## 💰 Price Comparison

Compare prices from multiple supported marketplaces on a single page.

Each comparison includes:

* Current price
* Discount information
* Availability
* Store information
* Direct purchase links

---

## 📈 Price History

Every tracked product maintains historical pricing information.

Users can:

* View price trends
* Identify lowest recorded prices
* Monitor price fluctuations
* Decide the optimal purchasing time

---

## ❤️ Wishlist

Save products for future purchases.

Wishlist items can later be tracked automatically for price changes.

---

## 🔔 Price Drop Notifications

Users receive notifications whenever:

* A tracked product decreases in price
* A target price is reached
* A major discount becomes available

---

## 📊 Personal Dashboard

Every user has access to a personalized dashboard containing:

* Saved products
* Tracked products
* Wishlist
* Recent searches
* Notification history
* Account information

---

## 🛡 Security

Security is a primary design goal.

The backend implements:

* Password hashing
* JWT authentication
* Input validation
* Global error handling
* Secure API design
* Role-based authorization (planned)

---

# 🚶 User Journey

```text
Register Account
        │
        ▼
Login
        │
        ▼
Search Products
        │
        ▼
Compare Prices
        │
        ▼
View Price History
        │
        ▼
Save Product
        │
        ▼
Track Price
        │
        ▼
Receive Price Alert
        │
        ▼
Purchase at the Best Time
```

---

# 🏗 Backend Architecture

The backend follows a layered architecture.

```text
Client
    │
    ▼
Router
    │
    ▼
Middleware
    │
    ▼
Controller
    │
    ▼
Service
    │
    ├── Prisma ORM
    ├── JWT Utilities
    ├── Email Utilities
    └── Other Helpers
    │
    ▼
PostgreSQL
```

Each layer has a single responsibility, making the project easier to maintain, test, and extend.

---

# 📂 Project Structure

```text
backend/
│
├── prisma/
├── src/
│   ├── config/
│   ├── middlewares/
│   ├── modules/
│   ├── shared/
│   ├── utils/
│   ├── app.ts
│   └── index.ts
│
├── package.json
└── tsconfig.json
```

---

# 🛠 Technology Stack

### Backend

* Node.js
* Express.js
* TypeScript
* Prisma ORM
* PostgreSQL
* Zod
* JWT
* bcrypt

### Future Technologies

* Redis
* Docker
* GitHub Actions
* Jest
* Swagger
* Nodemailer

---

# 🚀 Current Development Progress

## Completed

* Project Initialization
* Express Setup
* TypeScript Configuration
* Prisma Integration
* PostgreSQL Connection
* Request Validation
* Global Error Handling
* User Registration
* User Login

## In Progress

* JWT Authentication Middleware

## Planned

* Refresh Tokens
* Authorization
* Product Module
* Wishlist Module
* Notifications
* Admin Panel
* Testing
* Docker
* CI/CD

---

# 🎯 Project Goals

This project aims to demonstrate professional backend engineering practices including:

* Clean Architecture
* Secure Authentication
* Scalable Code Structure
* Database Design
* REST API Development
* Software Engineering Best Practices

---

# 📈 Future Roadmap

* Product Comparison Engine
* Price History Charts
* Email Notifications
* Search Optimization
* Recommendation System
* Caching
* Logging
* Monitoring
* Deployment
* Automated Testing

---

# 👨‍💻 Author

**Dilip**

Building PriceTruth as a long-term backend engineering project focused on scalability, clean architecture, and real-world software development practices.

---

# 📄 License

This project is licensed under the MIT License.
