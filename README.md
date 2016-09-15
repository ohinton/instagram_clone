# 🐱 Katstagram 🐱

#### By Olivia Hinton & Noah Yasskin | 9/15/16

## Description

This fun app lets you upload your favorite cat photos and tag your friends in cat photos!

## General Setup Instructions

* Clone this repository
* Install gems by running command `$ bundle` in the terminal
* Open another terminal tab and type `postgres` to start PostgreSQL database
* Return to first terminal tab and run `rails db:create` to create the databases
* Run `rails db:migrate db:test:prepare` to create tables
* Launch the Rails server by running command `$ rails s` in the terminal
* Launch site by visiting localhost:3000 in browser

## Project Guidelines

Make an app that lets users upload their photos to share with the world. User stories include:

* Users create accounts
* Users can add, edit, delete images (but only their own)
* Users can add, edit, delete tags for all images
* Users can tag each other in images (to start simple, you may choose to display a list of all the users in a drop-down menu when you add a tag)
* Users have a profile page (users#show) with a list of all the photos they are tagged in
* Users can "favorite" images; include image favorites on profile page
* Users can add, edit, delete comments to images

## Tech Used

* Ruby on Rails (v. 5.0.0.1)
* Active Record
* PostgreSQL
* Bootstrap/SCSS

### License

*This software is licensed under the MIT license.*

Copyright (c) 2016 **Olivia Hinton & Noah Yasskin**
