# SpinaGraphql
GraphQL plugin for Spina CMS. 

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'spina_graphql'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install spina_graphql
```

## Usage
To mount SpinaGraphql inside your rails/spina application, add the following line to your routes file:

    mount SpinaGraphql::Engine, at: "/api"
    
We're not including GraphiQL gem with SpinaGraphql so, if you want to use it, you need add it on your own:

    gem 'graphiql-rails', groups: [:development]
    
After that, mount it in your root app:

    if Rails.env.development?
      mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/api/graphql"
    end

## To do
- [ ] Tests
- [ ] All the models
- [ ] Queries optimalization
- [ ] General authorization
- [ ] Specific fields / connections authorization
- [ ] Mutations

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
