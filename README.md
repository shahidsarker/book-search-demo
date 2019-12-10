# Google Books Search

## Goal

To reinforce an understanding of building layouts (views, forms) using Ruby.

## Learning Objectives

By the end of this exercise the student will be able to:

- Create a simple one page webapp that can act as a search engine.
- Design responsive in mobile layouts.
- Implement two functioning routes.
- Build a search feature that displays a list of appropriate results.

## Introduction

Now that you know how to make erb files we’ll be making something a bit more complicated. The `googlebooks` gem is a wrapper around the free Google Book API. This means you can use it to search the Google Books database from within your own application.
For this workshop you’ll be creating a simple one page webapp that will act as a search engine. Feel free to check out the readme for more info on how to use the gem: https://github.com/zeantsoi/GoogleBooks.

## Setup

Create a new folder for this assignment called `book-search`.
Make a `server.rb` file and a `Gemfile`.
Your gemfile should have the following content:

```ruby
source 'https://rubygems.org' do
  gem "sinatra"
  gem "googlebooks"
end
```

## Instructions

### Part 1 - Explore

1. First things first, make sure you `bundle`!
1. Since this gem has a bit more to it than the rubyjokes gem, it would be a good idea to play around with it before we even start coding. Run irb in your folder from the terminal.
1. Now that you’re in the interactive ruby shell, you can make the googlebooks gem available to yourself by running `require "googlebooks"`.
1. Try out `GoogleBooks.search` and the other methods in the readme and examine the output. Don’t forget if you need to see inside of an object you can use the `.inspect` (https://goo.gl/nzaNhi) method.

### Part 2 - Build

1. Now that you have a fairly good idea on what the data you’ll be working with looks like, you’re ready to start designing your app.
1. The app should behave in the following way:
1. a GET request to “/” should render a simple search form.

```htmlmixed
 <form action="/" method="POST">
   <input name="query" />
   <button>Search</button>
 </form>
```

Read more about using the data from forms here: https://learnrubythehardway.org/book/ex51.html

4. a POST request to “/” should render that same form, but with the list of results underneath. You can achieve this with two views, one with results and one without. Or you can have an if statement that conditionally renders the search results in a single view file.

Each result item in the view should consist of

- the name of the book
- the author, if any
- an image of it, if any
- and a link to the it.

Everything should be well designed and responsive. So your app should definitely be usable in the phone emulator in chrome. Feel free to use Materialize or Bootstrap for this.

## Completion Requirements

Complete Workshop by end of allotted time limit.

The completed assignment is:

- Well designed and in mobile layouts.
- Has two functioning routes.
- Allows a user to search for anything and displays a list of results.
- Each result has the appropriate information.
- Group review session with the instructor.
