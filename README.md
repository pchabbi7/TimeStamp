# README

Timesteet application Ruby on Rails Application for Teachers to clock in and clock out time. 

Things the application has:
1. Admin and User authentication. The Admin has access and edit every user's data including himself, whereas the user has access to only his/her data.
2. Login Page
3. The Clock In and Clock out page. 

Things you may want to cover:

* Technology versions <br/>
  1. Ruby : 3.0.1 <br/>
  2. Rails : 6.1.4.1 <br/>
  3. Psql : 13.4 <br/>
  4. Heroku : 7.59.0 <br/>


* Database creation
  1. The database is created using rails migration and connected to PostgreSQL. 
  2. The application contains Users and ClockEvents tables. 
  3. The User tables store the username, password and information if the user is admin or not. 
  4. The ClockEvents contains Clock In, Clock Out date and time of the Teachers. 
  5. The User and ClockEvents table are connected. To explain in the ruby relations it would be as follows : <br/>
          * `ClockEvents` belongs_to `User` <br/>
          * `User` has_many `ClockEvents` 

* Login Page 

![Screen Shot 2021-08-29 at 5 40 47 PM](https://user-images.githubusercontent.com/41105212/131269423-0c2666a5-482c-4e20-bf2a-5e2231534fcd.png)


* Time Sheet 

![Screen Shot 2021-08-29 at 5 52 32 PM](https://user-images.githubusercontent.com/41105212/131269447-79f0800c-3f70-4eda-b00a-75e8a556f9e4.png)



# Steps to Login 
 1. Click on the link : https://teachertimestamp.herokuapp.com/login
 2. If you want to login as Teacher please use the following credentials : <br/>
    a. UserName : "user1" **(Note  : The Username is casesensitive)** 
    b. Password : "password"
    
 3. If you want to login as Admin : 
    a. UserName : "Admin" **(Note  : The Username is casesensitive)** 
    b. Password : "password"
    
    



# Written Response 

* Plan of Coding : The MVC is build in Ruby on Rails and for the UI it is HTML, CSS and JS. 

* Schema Design : The  detailed connection mapping between the tables is present in the config/db/schema.rb file in the application. 

![Screen Shot 2021-08-29 at 5 25 53 PM](https://user-images.githubusercontent.com/41105212/131268749-f29a8191-3a76-45f8-b255-66dc56c4342a.png)


![Screen Shot 2021-08-29 at 5 25 58 PM](https://user-images.githubusercontent.com/41105212/131268768-26f08493-7e45-424f-9e07-d4f6946a46cc.png)




* **Another Day** : If I had an extra day I would implement the following features :
1. Sign Up page 
2. Admin User DashBoard : The Admin would have privilage to make other user as admin. 
3. Set default start and end time on the calendar picker. 

* **Month Plan** : 
1. Admin able to set the default start and end time for clock in and clock out on the admin dashboard. 
2. Provide Teacher's details like : Username, No. of Hours Clocked In for seceted period of time, Vacation Plan. 
3. Filter on admin Dash Board : Filter by Date, Time, Month, Hours and Name
4. Error validations. 
5. School holidays, teacher's paid vacation capture on the User side.
6. Email Notification to Users if they have not clocked In and Clock out when they are working. 
7. Using the `Watir` gem write the test cases for the UI. 
8. Rspec test cases for the controller. 
9. Collect feed back from the user after impliemtation of the above function after 20days and enhance the feature based out of the feedback. 

