# README

Welcome to Focus! This Ruby on Rails application consumes the Pexels API to allow users to search for images based on a subject matter search query, as well as searching for similar images based on an image's title or photographer.

* Versions
- Rails 5.2.6
- Ruby 2.7.2

* System dependencies
You will need to sign up for a Pexels API Key:
1. Sign in/register for a Pexels account [here](https://www.pexels.com/join/)
2. Confirm your email address via email in your inbox/spam inbox.
3. [Sign up for an API Key](https://www.pexels.com/api/new/) Fill out the `Generate a Pexels API Key` and select `Generate API Key`.

* Configuration
- Clone repo
- Run `bundle install`

* Database creation
- Run `rails db:create`
- Run `bundle exec figaro install`
- Open your `config/application.yml` file in your code editor (You may have to open it manually)
- Then add to the bottom of the `config/application.yml` file, `pexels_api_key: <your_pexels_api_key>`

<!-- * Database initialization -->

* How to run the test suite
`bundle exec rspec`

<!-- * Services (job queues, cache servers, search engines, etc.) -->

* Deployment instructions
- Run `rails s`
- In your browser, visit `localhost:3000`

* Resources
- [Pexels API Documentation](https://www.pexels.com/api/documentation/)
