<h1 align="center">Vet Payment App<h1>

<p align="center">
    <img width="800" src="https://giphy.com/gifs/XOtxbCL6NLcyQxC7rv" alt="vet-payment-gif" />
</p>


## Description

I created this Vet Payment App using Flutter. The front end connects an API built in NodeJS to get user information and make PATCH updates when a user "pays" for their visits.

The backend database is a static json which contain the users and visits of the Vet

## How to Run

<h2 align="center">Api</h3>

### `yarn`

Open the /api folder in your IDE and download the node_modules with:

### `touch .env`

### `PORT=8080`

Create your .env file and put the following PORT

### `yarn start`

Runs the servers
Open [http://localhost:8080](http://localhost:8080) to view it in the browser.

<h3 align="center">Mobile App</h3>

Open /vet-payment-app in Android Studio

### `touch .env`

### `API_BASE_URL="http://localhost:8080`

Create your .env file and put the following API_BASE_URL. Currently only working on Android emulator.

### `build and run the application`


## Todos

- Host persistent database layer
- Fix styling on visit cards
- Add error handling on api and front end levels
- Add models of data using mongoose
