# README

find a project on www.baristahints.com - as it deployed to a Heroku might take time to "wake up dyno" and open app

* Ruby version '2.4.3'

* System dependencies - in a Gemfile

# App build with Ruby on Rails on a backend, database: Postgres, layout was build using Bootstrap Carousel template

Application purpose - give an ability for baristas to share their hints about work and get points, respect and potential presents in reward=)


App functionality:

1. App has sign up and login page with three types of users: Admin, Authorized user and non-authorized user
2. Store data about Users in a database(username, email, encoded password(Bcrypt 3.1.11))
3. Store data about hints and comments in a database with ability for authorized users to edit and delete **their** posts and comments(Admin can edit and delete everything)
4. Has an "admin panel" with all users data and ability for an admin to delete users
5. Has a search bar that operates with database and returns results in three categories: hints title, "body" and commentaries

Future plans:

1. Style app
2. Add more flash notification
3. Finish with activerecord validations
4. Enable google search bar
5. Enable "reddit-like" option to promote posts
6. Increase app security
7. Add image uploading

