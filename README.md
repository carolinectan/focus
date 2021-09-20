# README

Welcome to Focus! This Ruby on Rails application consumes the Pexels API to allow users to search for images based on a subject matter search query, as well as search for similar images based on an image's title or photographer.

## Table of Contents
- [Technologies](#technologies)
- [System Dependencies](#system-dependencies)
- [Configuration](#configuration)
- [Database Creation](#database-creation)
- [How to Run the Test Suite](#how-to-run-the-test-suite)
- [Deployment Instructions](#deployment-instructions)
- [Screenshots](#screenshots)
- [Resources](#resources)

## Technologies
|Development|Development|Testing
|--- |--- |--- |
|[Rails 5.2.6](https://rubygems.org/gems/rails/versions/5.2.6)|[Git](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)|[RSpec for Rails](https://github.com/rspec/rspec-rails)
|[Ruby 2.7.2](https://www.ruby-lang.org/en/downloads/)|[Github](https://desktop.github.com/)|[Capybara](https://github.com/teamcapybara/capybara)
|[Pry](https://rubygems.org/gems/pry/versions/0.10.3)|[HTML](https://developer.mozilla.org/en-US/docs/Web/HTML)|[Webmock](https://github.com/bblimke/webmock)
|[PostgresQL](https://www.postgresql.org/)|[CSS](https://developer.mozilla.org/en-US/docs/Web/CSS)|[VCR](https://github.com/vcr/vcr)
|[Faraday](https://github.com/lostisland/faraday)|[Rubocop](https://rubygems.org/gems/rubocop/versions/0.39.0)|[Launchy](https://rubygems.org/gems/launchy/versions/2.4.3)
|[Figaro](https://github.com/laserlemon/figaro)|[Atom](https://atom.io/)|[Orderly](https://github.com/jmondo/orderly)
|||[SimpleCov](https://rubygems.org/gems/simplecov/versions/0.12.0)
|||[Postman](https://www.postman.com/product/rest-client/)|


## System Dependencies
You will need to sign up for a Pexels API Key:
1. Sign in/register for a Pexels account [here](https://www.pexels.com/join/)
2. Confirm your email address via email in your inbox/spam inbox.
3. [Sign up for an API Key.](https://www.pexels.com/api/new/) Fill out the `Generate a Pexels API Key` and select `Generate API Key`.

## Configuration
- Clone repo
- Run `bundle install`

## Database Creation
- Run `rails db:create`
- Run `bundle exec figaro install`
- Open your `config/application.yml` file in your code editor (You may have to open it manually)
- Then add to the bottom of the `config/application.yml` file, `pexels_api_key: <your_pexels_api_key>`

<!-- * Database initialization -->

## How to Run the Test Suite
Run `bundle exec rspec`

<!-- * Services (job queues, cache servers, search engines, etc.) -->

## Deployment Instructions
- Run `rails s`
- In your browser, visit `localhost:3000`

## Screenshots
### Welcome Page
![Welcome Page](https://user-images.githubusercontent.com/81220681/133963280-16a5a8fa-54b9-4518-968b-c0d40582e82a.png)
### Discover Page
![Discover Page](https://user-images.githubusercontent.com/81220681/133963316-2f046ae5-6b3f-4064-b2bf-08b85b2792a1.png)
### Search Results Page
![Search Results Page](https://user-images.githubusercontent.com/81220681/133963342-586558ac-a385-46ae-a029-81fdcfacdf17.png)

## Resources
- [Pexels API Documentation](https://www.pexels.com/api/documentation/)
