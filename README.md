# SP Log Parser
---
Given a web-server log the aim of this application is to return a list of webpages following the below user stories:
```
As a user
so i can see see the number of times the web pages get accessed
I would like to see the most page views ordered from most pages views to less page views
```

```
As a user
so i can see see the unique accesses
I would like to see a ordered list of webpages with most unique page views
```

### Technologies used

- Ruby
- RSpec
- Rubocop
- Simplecov

### How to run the application

- Clone the repository to your machine:

  `git clone <repository path>`

- Navigate to your repository directory:

  `cd <project directory>`

- Run `bundle install`

- Give execute permissions to the Ruby script:

  `chmod +x parser.rb`

- Run the app:

  `./bin/parser.rb web_server.log`

### Screenshot of results

![image](https://user-images.githubusercontent.com/24396579/52527883-18a41a80-2cc8-11e9-8a43-91bd22f8b61d.png)

###  Testing

- Run `rspec` in your terminal
- 100% test coverage

###  Domain Model

```
   U S E R
╔════════════╗              
║  Terminal  ║  Interaction with log parser app               
╚════════════╝
      |
      |
      |                                   
╔════════════╗     
║            ║  - Opens the log file and stores the data into a Hash data type
║   Counter  ║  - Returns the number of views per page
║            ║  - Return the number of unique views per page
╚════════════╝      
       |             ╔═════════════════╗
       |             ║                 ║ - Module; no state  
       |------------>║ Formatter       ║ - Displays the formatted results
                     ║                 ║
                     ╚═════════════════╝
```
