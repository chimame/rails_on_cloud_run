# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Deploy
```bash
$ rails new . -TB
# create Dockerfile and start file
$ brew cask install google-cloud-sdk
$ gcloud builds submit --tag gcr.io/[project-id]/rails --project [project-id]
$ gcloud beta run deploy --image gcr.io/[PROJECT-ID]/rails --project [project-id]
```
