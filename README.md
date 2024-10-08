# README

This README provides steps to get the application up and running.

## MTG Card Manager

MTG Card Manager is a Ruby on Rails application for managing a collection of Magic: The Gathering cards, including features for creating custom decks and calculating card prices.

## Ruby version
Make sure you are using Ruby version **3.1.0** or higher.

## System dependencies
Ensure that you have the following dependencies installed:

- Rails 7.2.1
- PostgreSQL
- Puma
- Tailwind CSS
- Devise
- Kaminari

## Configuration
To set up the application, follow these steps:

1. **Clone the repository:**
  ```
  bash
  git clone https://github.com/Webstero/mtg-card-manager.git
  cd mtg-card-manager
  ```
2. **Install required gems:**
  ```
  bundle install
  ```
3. **Create the database:**
  ```
  rails db:create
  ```
4. **Download the all_printings.psql file:**

Visit https://mtgjson.com/downloads/all-files/ and place the downloaded file in the `db/` directory.
After cloning the project, run the Rake task to load the data: `rails db:load_mtg_data`. This should be done before migrating the database.

5. **Run migrations:**
  ```
  rails db:migrate
  ```
6. **Start the Rails server:**
  ```
  rails s
  ```
7. **Run tests:**
  ```
  rspec spec/.
  ```