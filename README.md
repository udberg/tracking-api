# Health-TrackerAPI

![Microverse](https://img.shields.io/badge/-Microverse-6F23FF?style=for-the-badge)

## Description

This is the backend of an Health Tracker app. It consists of 3 tables, users, units, and measurements. The endpoints in this project includes:

- POST /users 
Arguments:
```
{
  name: <username>
  password: <your_password>
}
```
creates a user and responds with:
```
{
  user: {}
  token: user_token
}
```

- POST/login 
Arguments:
```
{
  name: <username>
  password: <your_password>
}
```
Logs in the user and responds with:
```
{
  user: {}
  token: user_token
}
```

- GET /units 
Arguments:
```
headers: {
  Authorization: 'Bearer <token>'
}
```
Returns a list of all the availiable units to measure

-GET /units/:id 
Arguments:
```
headers: {
  Authorization: 'Bearer <token>'
}
```
Returns the unit with :id and a list of its measurements

- GET /measurements
Arguments:
```
headers: {
  Authorization: 'Bearer <token>'
}
```
returns an object with the name of the unit as keys and the list of measurements as values

- POST /units/:unit_id/measurements 
Arguments:
```
headers: {
  Authorization: 'Bearer <token>'
}
body: {
  value: <float>
}
```
Creates a measurement for the corresponding unit

- PUT /units/:unit_id/measurements/:id
Arguments:
```
headers: {
  Authorization: 'Bearer <token>'
}
body: {
  value: <float>
}
```
Updates the value of the given measurement

-DELETE /units/:unit_id/measurements/:id
Arguments:
```
headers: {
  Authorization: 'Bearer <token>'
}
```
Deletes the given measurement


## Library Directory 📙

| Contents                    |
| --------------------------- |

| [Live Demo](#live-demo)     |
| [Screenshot](#screenshot)   |
| [Built With](#built-with-🛠) |
| [Getting Started](#getting-started-🛠) |
| [Contributing](#contributing🛠) |
| [Authors](#authors)         |
| [License](#license)         |

## Live Demo

[Health-TrackerAPI]()


 ## Screenshot

![img]()

## Built With 🛠

```
- Ruby on Rails

```

## Getting Started

`The project wroks with the postgresql database To test the endpoints locally you can use tunneling with ngrok or a similar tool`

- Clone the repo `https://github.com/udberg/tracking-api.git`
- cd `into` tracking-api
- bundle install
- rails db:create
- rails db:migrate
- rails db:seed to populate the database

## The authentication uses a environment variable to wotk. To set it up:

- bundle exec figaro install In the config/application.yml file that will be created add:
- SECRET: <your_secret>

## To run the tests:

- bundle exec rspec

## Contributing

- Fork the project
- Create your feature branch `git checkout -b awesome-feature`
- Commit your changes `git commit -m 'Awesome feature'`
- Push it `git push -u origin awesome-feature`
- Open a pull request using this branch

## Authors

### 👨‍💻 Uduak John

[![GitHub](https://img.shields.io/badge/-GitHub-000?style=for-the-badge&logo=GitHub&logoColor=white)](https://github.com/udberg) <br>
[![LINKEDIN](https://img.shields.io/badge/-LINKEDIN-0077B5?style=for-the-badge&logo=Linkedin&logoColor=white)](https://www.linkedin.com/in/juduak/) <br>
[![EMAIL](https://img.shields.io/badge/-EMAIL-D14836?style=for-the-badge&logo=Mail.Ru&logoColor=white)](mailto:udberg@icloud.com) <br>
[![TWITTER](https://img.shields.io/badge/-TWITTER-1DA1F2?style=for-the-badge&logo=Twitter&logoColor=white)](https://twitter.com/juduak_)

### 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/udberg/tracking-api/issues).

### Show your support

Give a ⭐️ if you like this project!

### License

![Cocoapods](https://img.shields.io/cocoapods/l/AFNetworking?color=red&style=for-the-badge)
