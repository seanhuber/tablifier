tablifier
==============

`tablifer` provides an `ActionView` helper method that will generate an html table displaying the attributes of an `ActiveRecord` object or the key-value pairs of a `Hash`.

![Screenshot](https://cdn.rawgit.com/seanhuber/tablifier/master/screenshot.png)


Requirements and Dependencies
-----------------------------

Ruby version >= 2.0.  This gem was written with Rails in mind, but the only real requirements are `ActionView` and `Railties`.  It's been tested with versions `~> 4.1`, but will likely work with older versions of these gems as wells as 5.0+.


Installation
-----------------------------

Add to your `Gemfile`:

```ruby
gem 'tablifier', '~> 1.0'
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
