# ASSESSMENT 6: Interview Practice Questions
Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn.

1. In a model called Animal that has_many Sightings, what is the name of the foreign key? Would the foreign key be part of the Animal model or the Sightings model?

  Your answer: foreign key is part of the sightings model, called animal_id

  Researched answer:



2. Which routes must always be passed params and why?

  Your answer: delete, update, show - need the specific id to preform an action on one item

  Researched answer:



3. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess".

  Your answer: /game/:guess => main#game



4. Name three rails generator commands. What is created by each?

  Your answer:
  rails g migration - creates a migration to change the database
  rails g model - create a new table with all the table attributes
  rails g controller - create a new controller for a specific model
  rails g resource - create the routes, model, controller


  Researched answer:



5. Consider the Rails routes below. Describe the responsibility of each route.

/users        method="GET" - get all the users in the database, index

/users/1      method="GET" - get just one user, show

/users/new    method="GET" - display a form, new

/users/       method="POST" - user can submit data, create

/users/1      method="PUT" - edit an existing entry, update

/users/1      method="DELETE" - delete a user, destroy
