# README
MEMBERS-ONLY

This app is a project from the Ruby on Rails course at https://theodinproject.com

The goal is to get some experience using Devise for user authentication by
creating a members-only article posting website.

Authenticated Users can:

    - Create new posts

    - See the author names of previous posts

Unauthenticated Users can:

    - Read posts without author names

What I learned:

    - How to render partials based on signed-in status(display sign-in or logout button)

    - Set up a database with foreign keys (post => user_id corresponds to user => id)

    - How to setup controller methods to extract session data to control rendering of views

    - Pass values to attributes through hidden form fields(when creating a post, the current
      user's id is extracted to populate the :user_id key of :post)

    - How to add columns to existing db tables using migrations

    - How to configure new params keys for Devise by using a before_action in the application 
      controller(had to create a method that called the params sanitizer method built-in to Devise)

Overall, this project was a ton of fun and challenged me in ways I didn't expect. Although not
challenging in the same way as dealing with the heavy logic of past Ruby projects, gaining
familiarity with technologies I haven't used before is both frustrating and marvellous.
It's incredible to get a glimpse of other peoples hard work and ingenuity that lets building
with Rails be so intuitive.
