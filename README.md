# ⚽ Footy Friend

A web app designed for football lovers to be able to create their own leagues, teams, stadiums, and players. 

![footy-friend-home](https://user-images.githubusercontent.com/32938384/132212378-7aa377a8-a4be-4101-b1ed-314ebe0026c6.png)
<br>
App home: hfooty-friend-lw.herokuapp.com/
   

## Getting Started
### Setup

Install gems
```
bundle install
```
Install JS packages
```
yarn install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables. For any APIs, see group Slack channel.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

## Built With
- [Rails 6](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — Prototyping

## Acknowledgements
Teams are seeded using the Faker gem. Team names reflect real world teams but are populated by Faker seeded names.

## Team Members
- [Rhys Malyon](https://www.linkedin.com/in/rhysmalyon/)

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
