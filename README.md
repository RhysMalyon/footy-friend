# ⚽ Footy Friend

A web app designed for football lovers to be able to create their own leagues, teams, stadiums, and players. This was my first app developed solo from start to finish and gave me the opportunity to get valuable experience across the full spectrum of development. For more information on the tech used in the development process, check the 'Built With' section below.

I wanted to experiment with relational databases a bit more and see where I could push connections and manage references. This had a knock-on effect to the front end that helped me learn a lot about how PostgreSQL plays with Rails and how flexible it can be for creating a logical flow through a web app. In the future I plan to complete the CRUD actions for each model so that users have the ability to edit and delete their own creations.

![footy-friend-home](https://user-images.githubusercontent.com/32938384/132212378-7aa377a8-a4be-4101-b1ed-314ebe0026c6.png)
<br>
App home: https://footy-friend-lw.herokuapp.com/
<br>
### Demo account
Use the following login credentials to make your own leagues, teams, players, and stadiums.
<br>
<strong>Please note:</strong> Deleting a league will remove all associated teams and players.
<br>
<br>
Username: demo@ff.com
<br>
Password: 123123

   

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
Inside `.env`, set these variables.
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
