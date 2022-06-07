# ⚽️ Fantasy Dream Team

An app where you can build your dream football team by selecting famous players and adding them to your custom teams.

<p float="left">
  <img src="https://user-images.githubusercontent.com/69304255/172331389-01b2e77e-fb6e-42cb-a6bd-b2a14fcd3b6c.png" width="400" />
  <img src="https://user-images.githubusercontent.com/69304255/172331395-dce18ac9-f40f-470b-a5c1-3574c65600fd.png" width="400" />
  <img src="https://user-images.githubusercontent.com/69304255/172331382-872f8609-300d-4fd0-9be6-3151e86cdcfd.png" width="400" />
  <img src="https://user-images.githubusercontent.com/69304255/172331386-fce239db-2638-4ced-bbb0-f315736ddb06.png" width="400" /> 
</p>

<br>
App home: https://fantasy-dream-team.herokuapp.com/
   

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

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
