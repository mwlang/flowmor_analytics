# FlowmorAnalytics

FlowmorAnalytics injects google, clicky, etc. analytic scripts into your application.

I got tired of wiring up Google and Clicky Analytics to my Rails 4.x apps and just wanted to be able add the site keys to a config/analytics.yml file and require statement to the application.js file and be done.  Oh, and I wanted it to be smart enough to only render the scripts when in production.

Developed and tested against Rails 4.1

## Installation

Add to your Gemfile

```ruby
gem 'flowmor_analytics'
```

Then `bundle install`

Run the generator to get initial config/analytics.yml file:

```
rails g flowmor_analytics:install
```

Edit config/analytics.yml to add your site_id keys:

```yml
#
# Only production renders the tracking scripts by default
#
development:
  google:
    site_id: "UA-XXXXX"
  clicky:
    site_id: 123456789

test:
  google:
    site_id: "UA-XXXXX"
  clicky:
    site_id: 123456789

production:
  google:
    site_id: "UA-XXXXX"
  clicky:
    site_id: 123456789
```

If you need to render when not in production (or turn off in production), set :render in the yml file:

```ruby
# If you want to render for an environment, then add "render: true" either at the environment
# section or at the site-specific section.
#
# Environment Example:
#   development:
#     render: true
#     google:
#       site_id: ...
#
#
# Site Example:
#   development:
#     google:
#       render: true
#       site_id: ...
#     clicky:
#       render: false
#       site_id: ...
#
```

## TODO

* Ensure it plays well with turbolinks (I don't use turbolinks, but I know turbolinks leads to inaccurate analytics)
