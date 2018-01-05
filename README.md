# NuACM Web-App

The website for Northeastern University Association of Computing Machinery. Actively under development - this serves to connect students with the operations of NuACM.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Environments


[Production - nuacm.herokuapp.com](https://nuacm.herokuapp.com)

[Staging - nuacm-staging.herokuapp.com](https://nuacm-staging.herokuapp.com)

### Prerequisites

```
Ruby v2.4.1+
Rails v5.0.6+
```

### Installing

Clone Application

```
git clone https://github.com/nuacm/Website-Master.git
```

Setup Environment Variables

```
cp .env.sample .env
and then edit with live-values
```

Run Puma Webserver
```
bin/rails server
```

## Running the tests

The test suite is not currently setup. Plans to implement RSpec unit testing with Rubocop style linting

## Deployment

This application is deployed with Heroku. Master automatically deploys to the [staging application](https://nuacm-staging.herokuapp.com), which can then be promoted to [production](https://nuacm.herokuapp.com).

## Built With

* [Rails](#) - The web framework used
* [Bourbon](#) - SCSS function / mixin library

## Contributing

This app is open source and contribution is encouraged. To make updates open up a Pull Request and it will be reviewed and merged in by a member of the NuACM development team.

## Authors

* **Patrick McGrath** - *Lead Developer* - [PatrickMcGrath29](https://github.com/PatrickMcGrath29)


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
