# README

This is a Pokemon trader project! Here one or two persons can trade pokemons if is fair based in base experience of each pokemon. If is not fair will be notice.

## Here you can:
* Make trades
* Include a new pokemon that isn't in the list
* See the history

## Built with

* Architecture: MVC, as a convention in RoR, and Rest API, for client-server communication with the app.
* Test: RSpec
* Database: Postgresql.
* Frameworks: Ruby on Rails 6
* Layout: React and Bootstrap as CSS
* Getting pokemon data in: https://pokeapi.co/docs/v2
* Deployed in Heroku: https://tradepoke.herokuapp.com/

## For run it 

```
bundle
yarn install
rails db:migrate
rails db:seed
rails s
```


### There are somethings that will be improved over time. Are they:

* Make tests ( I made it sickly, so I prefer to make the features and leave to do the better tests a little later )
* Improve the view
  * Cards to show pokemons
  * A better layout to show the history
  * A better way to make trades
* Make profiles
* Make trades async
* Two peoples can access their own profiles and ask for trades async way
* Improve the code
* I accept suggestions 😊

