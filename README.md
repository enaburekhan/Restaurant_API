# restaurants-api
The restaiurant_api allows us to fetch restaurants data to the frontend. Built with ruby_on_rails. This repo host the backend. To access the react-redux frontend, go to [restaurants-app](https://github.com/enaburekhan/restaurant-app.git)

## Built With

- Ruby v3.0.0
- Ruby on Rails v6.1.4.1
- JWT
- rspec 5.0


### Project features

- A user can signup and login
- A logged in user can filter restaurants based on opening_date and name
- A logged in user can save restaurants colletions using their names
- A logged in user can show lists of collections.


## API endpoint 

[restaurants-API]()

## Getting Started

To get a local copy up and running follow these simple example steps.

### Setup   

The project repository can be found in [GitHub link](https://github.com/enaburekhan/Restaurant_API.git) or just clone the project using this command.


Open terminal on your workspace with
cd /home/workspace/Restaurant-Api

### Installation

Install gems with:

```
bundle install
```

Setup database with:

```
   rails db:create
   rails db:migrate
```

### Usage   

Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.

### Run tests

```
    rpsec --format documentation
```

> If the test suite passes, you'll be ready to run the app in a local server:

# Deployment
To deploy to heroku first login in heroku

### heroku login
Create a new project in heroku

### heroku create
You can verify that the remote was added to your project by running:

 - git config --list | grep heroku 
 - git push heroku master 

### Migrate your database

heroku run rails db:migrate
heroku run rails db:seed

### Tools used on this project
- Visual Studio Code
- Rubocop for Visual Studio Code

## Author

👤 **Eric Enaburekhan**

- Github: [@enaburekhan](https://github.com/enaburekhan)
- Twitter: [@enaburekhaneric](https://twitter.com/enaburekhaneric)
- Linkedin: [@ericenaburekhan](https://www.linkedin.com/in/eric-enaburekhan-801a28100/)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Many thanks to Microverse.inc for given me the opportunity to learn and build this app.




