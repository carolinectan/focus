# README

Welcome to Focus! This Ruby on Rails application consumes the Pexels API to allow users to search for images based on a subject matter search query, as well as search for similar images based on an image's title or photographer.

This image repository was fully tested with RSpec, Capybara, WebMock, VCR, Postman, Postman, and SimpleCov — all tests passing; 100% coverage.

## Table of Contents
- [Technologies](#technologies)
- [System Dependencies](#system-dependencies)
- [Configuration](#configuration)
- [Database Creation](#database-creation)
- [How to Run the Test Suite](#how-to-run-the-test-suite)
- [Deployment Instructions](#deployment-instructions)
- [Screenshots](#screenshots)
- [Additional Resources](#additional-resources)

## Technologies
|Development|Development|Testing
|--- |--- |--- |
|[Rails 5.2.6](https://rubygems.org/gems/rails/versions/5.2.6)|[Git](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)|[RSpec for Rails](https://github.com/rspec/rspec-rails)
|[Ruby 2.7.2](https://www.ruby-lang.org/en/downloads/)|[Github](https://desktop.github.com/)|[Capybara](https://github.com/teamcapybara/capybara)
|[Pry](https://rubygems.org/gems/pry/versions/0.10.3)|[HTML](https://developer.mozilla.org/en-US/docs/Web/HTML)|[Webmock](https://github.com/bblimke/webmock)
|[PostgresQL](https://www.postgresql.org/)|[CSS](https://developer.mozilla.org/en-US/docs/Web/CSS)|[VCR](https://github.com/vcr/vcr)
|[Faraday](https://github.com/lostisland/faraday)|[Rubocop](https://rubygems.org/gems/rubocop/versions/0.39.0)|[Launchy](https://rubygems.org/gems/launchy/versions/2.4.3)
|[Figaro](https://github.com/laserlemon/figaro)|[Atom](https://atom.io/)|[Postman](https://www.postman.com/product/rest-client/)
|||[SimpleCov](https://rubygems.org/gems/simplecov/versions/0.12.0)

## System Dependencies
You will need to sign up for a Pexels API Key:
1. Sign in/register for a Pexels account [here](https://www.pexels.com/join/)
2. If you just registered, confirm your email address via email in your inbox/spam inbox.
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
- Click on `Discover Images`
- Enter the subject you wish to search by (i.e. `ocean`) then select `Search`
- On the image search results page, each image has a find `Similar Images by Image Title` and a find `Similar Images by Photographer` button. If you select `Similar Images by Image Title`, you will be taken to a image search by image title results page. If you select `Similar Images by Photographer`, you will be taken to a image search by image photographer results page.
- To start a new search, visit `localhost:3000`

## Screenshots
### Welcome Page
![Welcome Page](https://user-images.githubusercontent.com/81220681/133979222-e1d6ee89-053f-4ae9-aa97-d22dd9f4e42c.png)
### Discover Page
![Discover Page](https://user-images.githubusercontent.com/81220681/133979225-a17c90e4-6b7c-45b5-bd57-f9bdc16c654b.png)
### Search Results Page
![Image Search Results Page](https://user-images.githubusercontent.com/81220681/134067729-3e327d0d-7190-4503-92ac-f564abe35a81.png)
### Search by Image Title Results Page
![Screen Shot 2021-09-20 at 5 06 33 AM](https://user-images.githubusercontent.com/81220681/134067732-3c70d7c7-2085-469f-94ea-ab021bfb5e5c.png)
### Search by Image Photographer Results Page
![Screen Shot 2021-09-20 at 5 08 05 AM](https://user-images.githubusercontent.com/81220681/134067737-0f44360a-855b-431e-8935-d1a869222197.png)

## Additional Resources
- [Pexels API Documentation](https://www.pexels.com/api/documentation/)
