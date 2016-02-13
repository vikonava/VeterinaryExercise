## README

This application is an example Ruby on Rails app from a coding assigment which its information is located on public/CodingAssignment.pdf for you to be able to see the user stories and restrictions. The application was developer using the latest Ruby on Rails 5.0 and includes some Gems like Devise, Cancan, Bootstrap and HAML.

The solution of the exercise is incomplete due to time restrictions that are presented with the problem (limit of 4 hours) so some features are not yet available or complete but it is usable. Here is a list of the missing upgrades and a short explanation on how to solve them for a next sprint.

- Cannot change user type to Doctor, Admin or Receptionist
This are boolean values and as of now they must be updates via the rails console. The intention of the current configuration is that an administrator account is given during the database seed and that administrator would be able to update common users and change their user type status to either Doctor, Admin and/or Receptionist. Unfortunately the devise gem doesn't a User administration ready solution to be able to use it out of the box and save time. One alternative is including the RailsAdmin gem to be able to have an administrator access everything on the database and raw attribute values (which sometimes might be confusing for a user). Another alternative is just to build the action of the controller myself and views to update user attributes and add school degree and years in practice information if needed.

- Need to input Pet Id for scheduling an appointment
A better solution to this, and the one I am expecting, is to have first of all a text field so that the receptionist is able to search for a name or email on the user's database. The results of that search would trigger a JS script, using AJAX and RoR ability to have .js responses, to modify a dropdown menu that includes all the pets from that particular customer so that the receptionist would be able to select it easier from that list. It is an easy fix, but again time constraint was the real killer of the project.

- Email reminder to customer
One of the great things of Ruby on Rails it's Active Jobs. With that we would be able to create a Mailer template with the information of the customer reminding him about a particular appointment and queueing the mail so it could be sent a day before the appointment.

Other than that I would have loved to present also Rspec unit testing, but I think for this exercise it was more important to show to be able to create models and relationships, and to be able to create user authentication and to manage authorizations
