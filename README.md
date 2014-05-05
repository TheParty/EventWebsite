BEAT!
--------------------------------
--------------------------------

Emily Owens and Abeve Tayachow
--------------------------------

This is the final project for CSCI 3308.
This website acts as a hub for people who either want to find events, or host events. 

People who are hosting events can post all the details on individual Event Pages. People who are just searching for an Event to attend can search for events in their area.

We had hoped to implement the ability for users to invite others to their events, but ran out of time before this occured. Because of this, we also do not have the functionality to connect Users based on which events they have attended.
Instead, we have a list of all the Events a given user has created.




**Descriptions for each Model:**

Our two main models were for Users and Events.

When **Users** are created, they are required to submit a unique email, and a password at least 6 characters long. The email is currently tested to see if it has the proper format of a real email, but there is no verification. User session information is stored in a remember token.
A user has many events.

**Events** belong to users. They verify that they are created with a name, and that a registered user has created them.



**Descriptions for each Significant View:**

*Note: Header and Footer appear on all views*

1. Home page (Not logged in): 
  * There is a search bar to search events, a sign-up button, and a header which will direct you to either log-in, or will also allow you to search events.
2. Home page (Logged-In)
  * Search Bar for Events
  * Header bar with links to Profile, Search Events, and Create Event
3. Sign Up Page
  * Requires an email address, and a 6-character password and confirmation
  * Contains error messages
4. Profile Page
  * Username
  * Gravatar (Changeable image based on user email)
  * Location
  * Biography
  * List of Events created by User
5. Edit Profile Page
  * Authentication of Correct User (Users can only edit their own profiles)
  * Can edit username, location, biography, email, and password
  * Link to edit Gravatar
  * Requires password confirmation for changes
  * Contains error messages
6. Event Search Page
  * Search Bar
  * A) List containing all created Events; Ordered by date created
  * B) List containing all Events related to search query; Ordered by date created
7. Event Profile Page
  * Event information (Name, Location, Time, and Description)
  * DISQUS forum: A forum hosted by DISQUS. This was chosen to allow anyone, not 			   just people signed up for an account, to comment on events.
8. Event Edit Page
	* Can edit Name, Location, Time, Description
	* Only the user who created the event is allowed to edit it. Otherwise, you are bounced back to the Search page


**Descriptions for each Controller:**

1. Application Controller
  * Forgery protection
2. Sessions Controller
  * Creates a unique session on login, and destroys it upon logout
3. Users Controller
  * Defines User permissions (signed in, correct user, and admin user)
  * Show: User Parameters, and User Events
4. Events Controller
  * Defines Event Permissions (signed in, correct user)
  * Handles search params
  * Connects Events to the User that created them (sets user id)


