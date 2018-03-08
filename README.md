[![Gem Version](https://badge.fury.io/rb/tablifier.svg)](https://badge.fury.io/rb/tablifier)
[![Build Status](https://travis-ci.org/seanhuber/tablifier.svg?branch=master)](https://travis-ci.org/seanhuber/tablifier)
[![Coverage Status](https://coveralls.io/repos/github/seanhuber/tablifier/badge.svg?branch=master)](https://coveralls.io/github/seanhuber/tablifier?branch=master)

tablifier
==============

`tablifer` provides an `ActionView` helper method that will generate an html table displaying the attributes of an `ActiveRecord` (or `ApplicationRecord`) object or the key-value pairs of a `Hash`.

![Screenshot](https://cdn.rawgit.com/seanhuber/tablifier/master/screenshot.png)


Requirements and Dependencies
-----------------------------

Ruby version >= 2.0.  This gem was written with Rails in mind, but the only real requirements are `ActionView` and `Railties`.  It's been tested with `ActiveRecord` versions `~> 4.1` as well as `ApplicationRecord` for Rails 5.


Installation
-----------------------------

Add to your `Gemfile`:

```ruby
gem 'tablifier', '~> 1.1'
```

Next, `bundle install`.  You can style generated tables yourself or use the included stylesheet (demonstrated in the above screenshot) by adding to `app/assets/stylesheets/application.css`:

```css
/*
 *= require tablifier
 */
```


Usage
-----------------------------

In an `ERB` view, call the `tablify` method and pass the object you'd like tablified:

```html
<h3>A tablified hash:</h3>
<%= tablify {first_key: 'first_value', second_key: 'second_value'} %>

<h3>A tablified ActiveRecord object:</h3>
<%= tablify MyModel.first %>
```


License
-----------------------------

MIT-LICENSE.
