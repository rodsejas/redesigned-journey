## PropertyLink

Visit the live demo [here](https://sleepy-harbor-87184.herokuapp.com/).

A basic web app for property managers. A user can create an account and add/maintain properties with linked tenants and tenancy details.

## Motivation

This app was developed to strengthen my recent learnings in building backend CRUD systems, integrating gem API's, using front-end frameworks, and finally, deployment to a server.

## Screenshots

Include logo/demo screenshot etc.

## Tech/framework used

<b>Built with</b>

- Ruby on Rails
- HTML
- CSS
- Bootstrap v5

## Features

- Basic user authentication (bcrypt) and cookie sessions.

- The Geocoder Ruby gem (see more here) automatically populates latitude and longitude columns in the associated properties table based on address data filled by the user.

- The Google Maps Embed API was used to depict street-view based on the longitude/latitude values. Given the public nature of git commits, the API key was set as an environment variable in Heroku to obscure the key.
