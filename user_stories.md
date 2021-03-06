USER STORIES:

#User creates profile:

As a prospective user
I want to create a profile
So that I can use the app

Acceptance criteria:
- I must be able to access the sign up form from the root
- I must provide an email address
- I must provide a username and password
- I must confirm my password
- I must be given notification if my creation was successfful

#User signs in

As an unauthenticated user
I want to sign in
So that I can post items and review them

Acceptance Criteria:
- If I specify a valid, previously registered email and password,
- I am authenticated and I gain access to the system
- If I specify an invalid email and password, I remain unauthenticated
- If I am already signed in, I can't sign in again.

#User signs out

As an authenticated user
I want to sign out
So that no one else can post items or reviews on my behalf

Accepance criteria:
- I must be able to sign out from the top bar displayed on every page
- I must be given notification that sign out was successful

#User edits profile:

As an authenticated user
I want to update my information
So that I can keep my profile up to date

Acceptance criteria:
- I must be able to access the 'edit profile' page from the top bar displayed on every page
- I must be given a notification if my update was successful.

#User deletes profile:

As an authenticated user
I want to delete my profile
So that my information is no longer retained by the app

Acceptance criteria:
- I must be able to access the 'delete profile' link from the 'edit profile' page.
- I must be given notification that my deletion was successful.

#user creates a character

As an authenticated user
I want to create a character
So my character can build quests

Acceptance criteria:
- I must be given notification that my character creation was successful
-

#user edits a character(only allowed before a story has begun)

As an authenticated user
I want to edit my character
So I can change character attributes

Acceptance criteria:
- I can only edit my character if they are not currently engaged on a quest
-
#user deletes a character

As an authenticated user
I want to delete my character
So I can maintain my profile

- I must be able to access the 'delete character' link from the 'edit character' page
- I must be given notification that my deletion was successful

#user selects a story to begin
#User can restart or redo a quest with a clean slate

#heroku
