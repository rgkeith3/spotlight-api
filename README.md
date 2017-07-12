# Spotlight Labs API

This API is meant to be a central API for use on the spotlight labs web app and mobile platforms.

The API touches a MongoDB to store user information and uses Paperclip to upload UGC to AWS S3.

### Thought Process

I decided to use rails to take advantage of it's opinionated, legible design pattern. It will be the easiest framework for someone else to examine my code base and decipher the intent and how it works.

#### s3
s3 credentials can be set using ENV variables as listed in
config.paperclip_defaults in config/environments/development.rb and /production.rb, or simply inserted into the file.

#### MongoDB
the database connection can be established in the mongoid.yml file.

#### Devise
Devise is a popular authentication gem that I used to provide users the ability to sign in and out and keep track of their session

### actions and API endpoints
Method | route | controller#method
 --- | --- | ---
 POST | users/sign_in | devise/session#create
 DELETE | users/sign_out | devise/session#destroy
 POST | users | devise/registration#create
 POST | api/posts | api/posts#create
 PATCH | api/posts/:id | api/posts#update
 GET | api/posts/:id | api/posts#show
 DELETE | api/posts/:id | api/posts#destroy
 POST | api/follow | api/follow#create
 DELETE | api/follow/:user_id | api/follow#destroy
 POST | api/bookmark | api/bookmark#create
 DELETE | api/bookmark/:post_id | api/bookmark#destroy
